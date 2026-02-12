.. _zephyr-heap-implementation-analysis:

Zephyr Heap 实现深度技术分析报告
####################################

.. contents::
    :local:
    :depth: 3

1. 概述
========

Zephyr RTOS 的堆内存管理系统是一个高效、灵活的实现，专为资源受限的嵌入式系统设计。本文档基于对 ``zephyr/lib/heap`` 目录下所有源代码的深入分析，全面剖析 Zephyr 堆内存的实现机制、架构设计、核心算法以及高级特性。

1.1 核心设计理念
------------------

Zephyr 堆实现遵循以下核心设计原则：

- **分离适配分配器**：使用幂次大小的桶（bucket）管理空闲块
- **常量时间复杂度**：所有操作都有确定性的时间复杂度
- **空间效率**：最小化内存开销，每个分配块仅需4-8字节头部
- **碎片抗性**：即时合并空闲块，智能分配策略
- **可配置性**：通过 Kconfig 提供丰富的配置选项
- **可扩展性**：支持多堆、共享堆等高级特性

1.2 文件结构分析
----------------

```
zephyr/lib/heap/
├── CMakeLists.txt          # 构建配置
├── Kconfig                 # 配置选项
├── heap.c                 # 核心堆实现
├── heap.h                 # 内部堆API
├── heap_info.c            # 堆信息打印
├── heap_listener.c        # 堆事件监听器
├── heap_stats.c           # 运行时统计
├── heap_stress.c         # 压力测试
├── heap_validate.c        # 堆完整性验证
├── multi_heap.c          # 多堆管理器
└── shared_multi_heap.c   # 共享多堆管理器
```

2. 核心堆实现分析 (heap.c)
==========================

2.1 数据结构设计
----------------

2.1.1 块结构 (Chunk Structure)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Zephyr 使用块（chunk）作为内存管理的基本单位，每个块包含以下字段：

```c
enum chunk_fields { 
    LEFT_SIZE,       // 左侧相邻块的大小
    SIZE_AND_USED,   // 块大小和使用标志
    FREE_PREV,       // 空闲链表前驱指针
    FREE_NEXT        // 空闲链表后继指针
};
```

**关键设计特点**：

- **双链表结构**：每个块都记录左右邻居的大小，便于双向遍历
- **使用标志**：在 ``SIZE_AND_USED`` 的最低位存储使用状态
- **头部复用**：空闲块的 ``FREE_PREV`` 和 ``FREE_NEXT`` 字段在分配时被用户数据复用
- **边界检测**：通过检查 ``left_chunk(right_chunk(c)) == c`` 快速检测缓冲区溢出

2.1.2 堆控制结构 (z_heap)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

```c
struct z_heap {
    chunkid_t chunk0_hdr[2];      // 第一个块的头部
    chunkid_t end_chunk;          // 结束块ID
    uint32_t avail_buckets;       // 可用桶位图
#ifdef CONFIG_SYS_HEAP_RUNTIME_STATS
    size_t free_bytes;           // 空闲字节数
    size_t allocated_bytes;       // 已分配字节数
    size_t max_allocated_bytes;   // 最大分配字节数
#endif
    struct z_heap_bucket buckets[0]; // 桶数组（灵活数组成员）
};
```

**设计亮点**：

- **灵活数组成员**：桶数组作为灵活数组成员，节省空间
- **位图管理**：使用 ``avail_buckets`` 位图快速查找可用桶
- **运行时统计**：可选的统计信息支持内存使用监控

2.1.3 核心类型定义 (chunksz_t 和 chunkid_t)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Zephyr 堆实现使用两个核心类型来管理内存块：

```c
#define CHUNK_UNIT 8U

typedef struct { char bytes[CHUNK_UNIT]; } chunk_unit_t;
typedef uint32_t chunkid_t;
typedef uint32_t chunksz_t;
```

**chunkid_t（块ID）**：

- **用途**：标识堆中每个块的唯一标识符
- **单位**：以8字节（CHUNK_UNIT）为单位的偏移量
- **零值特殊**：chunkid_t为0表示无效/空指针，因为块0总是包含堆控制结构，不能分配给用户
- **实际存储**：根据堆大小动态选择
  - 小堆（<262136字节）：实际使用uint16_t存储
  - 大堆（≥262136字节）：实际使用uint32_t存储

**chunksz_t（块大小）**：

- **用途**：表示整个块的大小（头部+用户数据），以8字节为单位
- **单位**：8字节单位的数量
- **与SIZE_AND_USED字段配合**：在块的头部，大小信息存储在SIZE_AND_USED字段中
- **大小编码**：实际存储时左移1位（size << 1），最低位用于存储使用标志

**两者关系与区别**：

| 特性 | chunkid_t | chunksz_t |
|------|-----------|------------|
| **用途** | 块标识符/位置 | 块大小 |
| **单位** | 8字节单位的偏移量 | 8字节单位的数量 |
| **语义** | "在哪里" | "多大" |
| **零值** | 无效/保留 | 无效大小 |
| **计算** | chunkid_t + chunksz_t = chunkid_t | chunksz_t + chunksz_t = chunksz_t |

**实际应用示例**：

```c
// 分配块
chunkid_t c = alloc_chunk(h, 5);  // 分配5个单位的块，返回块ID

// 获取块大小
chunksz_t sz = chunk_size(h, c);  // 获取块的大小（单位数）

// 计算实际字节数
size_t actual_bytes = sz * CHUNK_UNIT;  // sz * 8

// 计算相邻块
chunkid_t next_c = c + sz;  // 下一个块的ID = 当前块ID + 当前块大小
```

**设计优势**：

1. **空间效率**：使用单位而非字节数，可以表示更大的范围
2. **对齐保证**：8字节单位天然保证内存对齐
3. **计算简化**：块间距离计算只需简单的加减法
4. **灵活适配**：根据堆大小自动选择16位或32位存储

2.1.4 桶结构 (z_heap_bucket)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

```c
struct z_heap_bucket {
    chunkid_t next;  // 指向桶中第一个空闲块
};
```

每个桶维护一个循环链表，存储相同大小范围的空闲块。

2.2 核心算法分析
----------------

2.2.1 块大小自适应机制
~~~~~~~~~~~~~~~~~~~~~~~~~~

Zephyr 实现了智能的块大小自适应机制：

```c
static inline bool big_heap_chunks(chunksz_t chunks)
{
    if (IS_ENABLED(CONFIG_SYS_HEAP_SMALL_ONLY)) {
        return false;
    }
    if (IS_ENABLED(CONFIG_SYS_HEAP_BIG_ONLY) || sizeof(void *) > 4U) {
        return true;
    }
    return chunks > 0x7fffU;  // 32767 个单位 = 262136 字节
}
```

**三种配置模式**：

1. **小堆模式** (``CONFIG_SYS_HEAP_SMALL_ONLY``)：
   - 块ID和大小使用 16 位
   - 最大堆大小：262136 字节
   - 头部大小：4 字节

2. **大堆模式** (``CONFIG_SYS_HEAP_BIG_ONLY``)：
   - 块ID和大小使用 32 位
   - 最大堆大小：16383 MB
   - 头部大小：8 字节

3. **自适应模式** (``CONFIG_SYS_HEAP_AUTO``)：
   - 根据堆大小自动选择
   - 小堆使用 16 位，大堆使用 32 位
   - 运行时开销稍大，但内存效率最优

2.2.2 桶索引计算
~~~~~~~~~~~~~~~~~~

```c
static inline int bucket_idx(struct z_heap *h, chunksz_t sz)
{
    unsigned int usable_sz = sz - min_chunk_size(h) + 1;
    return 31 - __builtin_clz(usable_sz);
}
```

**算法分析**：

- 使用前导零计数（CLZ）计算桶索引
- 实现了幂次大小的桶分类
- 每个桶管理特定大小范围的块
- 时间复杂度：O(1)

2.2.3 分配算法
~~~~~~~~~~~~~~~

**两阶段分配策略**：

**阶段1：最小桶采样**（[heap.c:232-244](file:///f:\workspace\src\zephyr-src\zephyrprj-3.7.0\zephyr\lib\heap\heap.c#L232-L244)）

```c
if (b->next != 0U) {
    chunkid_t first = b->next;
    int i = CONFIG_SYS_HEAP_ALLOC_LOOPS;  // 默认为3
    do {
        chunkid_t c = b->next;
        if (chunk_size(h, c) >= sz) {
            free_list_remove_bidx(h, c, bi);
            return c;
        }
        b->next = next_free_chunk(h, c);
        CHECK(b->next != 0);
    } while (--i && b->next != first);
}
```

**阶段2：保证适配桶**（[heap.c:249-258](file:///f:\workspace\src\zephyr-src\zephyrprj-3.7.0\zephyr\lib\heap\heap.c#L249-L258)）

```c
uint32_t bmask = h->avail_buckets & ~BIT_MASK(bi + 1);

if (bmask != 0U) {
    int minbucket = __builtin_ctz(bmask);
    chunkid_t c = h->buckets[minbucket].next;

    free_list_remove_bidx(h, c, minbucket);
    CHECK(chunk_size(h, c) >= sz);
    return c;
}
```

**算法优势**：

- **统计优化**：阶段1 有 87.5% 的概率找到合适的块
- **性能保证**：最坏情况下仍为常量时间
- **碎片控制**：优先使用小桶，减少碎片

2.2.4 块分割与合并
~~~~~~~~~~~~~~~~~~~~

**块分割**（[heap.c:109-122](file:///f:\workspace\src\zephyr-src\zephyrprj-3.7.0\zephyr\lib\heap\heap.c#L109-L122)）：

```c
static void split_chunks(struct z_heap *h, chunkid_t lc, chunkid_t rc)
{
    CHECK(rc > lc);
    CHECK(rc - lc < chunk_size(h, lc));

    chunksz_t sz0 = chunk_size(h, lc);
    chunksz_t lsz = rc - lc;
    chunksz_t rsz = sz0 - lsz;

    set_chunk_size(h, lc, lsz);
    set_chunk_size(h, rc, rsz);
    set_left_chunk_size(h, rc, lsz);
    set_left_chunk_size(h, right_chunk(h, rc), rsz);
}
```

**块合并**（[heap.c:125-131](file:///f:\workspace\src\zephyr-src\zephyrprj-3.7.0\zephyr\lib\heap\heap.c#L125-L131)）：

```c
static void merge_chunks(struct z_heap *h, chunkid_t lc, chunkid_t rc)
{
    chunksz_t newsz = chunk_size(h, lc) + chunk_size(h, rc);

    set_chunk_size(h, lc, newsz);
    set_left_chunk_size(h, right_chunk(h, rc), newsz);
}
```

**释放时的智能合并**（[heap.c:133-149](file:///f:\workspace\src\zephyr-src\zephyrprj-3.7.0\zephyr\lib\heap\heap.c#L133-L149)）：

```c
static void free_chunk(struct z_heap *h, chunkid_t c)
{
    // 与右侧空闲块合并
    if (!chunk_used(h, right_chunk(h, c))) {
        free_list_remove(h, right_chunk(h, c));
        merge_chunks(h, c, right_chunk(h, c));
    }

    // 与左侧空闲块合并
    if (!chunk_used(h, left_chunk(h, c))) {
        free_list_remove(h, left_chunk(h, c));
        merge_chunks(h, left_chunk(h, c), c);
        c = left_chunk(h, c);
    }

    free_list_add(h, c);
}
```

**设计优势**：

- **即时合并**：释放时立即合并相邻空闲块
- **双向合并**：同时检查左右邻居
- **碎片最小化**：最大程度减少外部碎片

2.2.5 空闲链表管理
~~~~~~~~~~~~~~~~~~~~

**添加到空闲链表**（[heap.c:68-104](file:///f:\workspace\src\zephyr-src\zephyrprj-3.7.0\zephyr\lib\heap\heap.c#L68-L104)）：

```c
static void free_list_add_bidx(struct z_heap *h, chunkid_t c, int bidx)
{
    struct z_heap_bucket *b = &h->buckets[bidx];

    if (b->next == 0U) {
        // 空链表，添加第一个元素
        h->avail_buckets |= BIT(bidx);
        b->next = c;
        set_prev_free_chunk(h, c, c);
        set_next_free_chunk(h, c, c);
    } else {
        // 插入到 "next" 指针之前
        chunkid_t second = b->next;
        chunkid_t first = prev_free_chunk(h, second);

        set_prev_free_chunk(h, c, first);
        set_next_free_chunk(h, c, second);
        set_next_free_chunk(h, first, c);
        set_prev_free_chunk(h, second, c);
    }
}
```

**从空闲链表移除**（[heap.c:34-66](file:///f:\workspace\src\zephyr-src\zephyrprj-3.7.0\zephyr\lib\heap\heap.c#L34-L66)）：

```c
static void free_list_remove_bidx(struct z_heap *h, chunkid_t c, int bidx)
{
    struct z_heap_bucket *b = &h->buckets[bidx];

    if (next_free_chunk(h, c) == c) {
        // 最后一个块
        h->avail_buckets &= ~BIT(bidx);
        b->next = 0;
    } else {
        // 从循环链表中移除
        chunkid_t first = prev_free_chunk(h, c);
        chunkid_t second = next_free_chunk(h, c);

        b->next = second;
        set_next_free_chunk(h, first, second);
        set_prev_free_chunk(h, second, first);
    }
}
```

**设计特点**：

- **循环链表**：便于插入和删除操作
- **位图优化**：快速判断桶是否为空
- **O(1) 操作**：所有链表操作都是常量时间

2.3 内存布局详解
----------------

2.3.1 堆初始化过程
~~~~~~~~~~~~~~~~~~~~

**初始化流程**（[heap.c:485-545](file:///f:\workspace\src\zephyr-src\zephyrprj-3.7.0\zephyr\lib\heap\heap.c#L485-L545)）：

```c
void sys_heap_init(struct sys_heap *heap, void *mem, size_t bytes)
{
    // 1. 验证堆大小
    if (IS_ENABLED(CONFIG_SYS_HEAP_SMALL_ONLY)) {
        __ASSERT(bytes / CHUNK_UNIT <= 0x7fffU, "heap size is too big");
    } else {
        __ASSERT(bytes / CHUNK_UNIT <= 0x7fffffffU, "heap size is too big");
    }

    // 2. 预留结束标记块头部
    __ASSERT(bytes > heap_footer_bytes(bytes), "heap size is too small");
    bytes -= heap_footer_bytes(bytes);

    // 3. 对齐起始和结束地址
    uintptr_t addr = ROUND_UP(mem, CHUNK_UNIT);
    uintptr_t end = ROUND_DOWN((uint8_t *)mem + bytes, CHUNK_UNIT);
    chunksz_t heap_sz = (end - addr) / CHUNK_UNIT;

    // 4. 初始化堆控制结构
    struct z_heap *h = (struct z_heap *)addr;
    heap->heap = h;
    h->end_chunk = heap_sz;
    h->avail_buckets = 0;

    // 5. 初始化桶数组
    int nb_buckets = bucket_idx(h, heap_sz) + 1;
    chunksz_t chunk0_size = chunksz(sizeof(struct z_heap) +
                                 nb_buckets * sizeof(struct z_heap_bucket));

    __ASSERT(chunk0_size + min_chunk_size(h) <= heap_sz, "heap size is too small");

    for (int i = 0; i < nb_buckets; i++) {
        h->buckets[i].next = 0;
    }

    // 6. 设置块结构
    // 块0：包含堆控制结构
    set_chunk_size(h, 0, chunk0_size);
    set_left_chunk_size(h, 0, 0);
    set_chunk_used(h, 0, true);

    // 块1：初始空闲块
    set_chunk_size(h, chunk0_size, heap_sz - chunk0_size);
    set_left_chunk_size(h, chunk0_size, chunk0_size);

    // 结束标记块
    set_chunk_size(h, heap_sz, 0);
    set_left_chunk_size(h, heap_sz, heap_sz - chunk0_size);
    set_chunk_used(h, heap_sz, true);

    // 7. 添加初始空闲块
    free_list_add(h, chunk0_size);
}
```

**内存布局图示**：

```
+------------------+
| 堆控制结构       |
| +--------------+ |
| | z_heap       | |
| | buckets[]    | |
| +--------------+ |
+------------------+
| 块0 (已使用)    | <- 包含堆控制结构
+------------------+
| 块1 (空闲)      | <- 初始空闲块
+------------------+
| 结束标记块       | <- 大小为0
+------------------+
```

**详细代码解析**：

**步骤1：计算桶数量**（[heap.c:519](file:///f:\workspace\src\zephyr-src\zephyrprj-3.7.0\zephyr\lib\heap\heap.c#L519)）

```c
int nb_buckets = bucket_idx(h, heap_sz) + 1;
```

- 根据堆的总大小（heap_sz）计算需要的桶数量
- `bucket_idx()` 使用前导零计数（CLZ）算法，返回桶索引
- 加1是因为桶索引从0开始，需要包含最后一个桶
- 例如：堆大小为1024单位，可能需要10个桶

**步骤2：计算块0大小**（[heap.c:520-521](file:///f:\workspace\src\zephyr-src\zephyrprj-3.7.0\zephyr\lib\heap\heap.c#L520-L521)）

```c
chunksz_t chunk0_size = chunksz(sizeof(struct z_heap) +
                         nb_buckets * sizeof(struct z_heap_bucket));
```

- 计算堆控制结构和桶数组占用的总大小
- `sizeof(struct z_heap)`：固定部分的大小（chunk0_hdr[2] + end_chunk + avail_buckets）
- `nb_buckets * sizeof(struct z_heap_bucket)`：桶数组的总大小
- `chunksz()` 将字节数转换为8字节单位的数量
- 块0的大小包含头部，因为它是整个控制结构的容器

**步骤3：验证堆大小**（[heap.c:523](file:///f:\workspace\src\zephyr-src\zephyrprj-3.7.0\zephyr\lib\heap\heap.c#L523)）

```c
__ASSERT(chunk0_size + min_chunk_size(h) <= heap_sz, "heap size is too small");
```

- 确保堆大小足够容纳：
  - 块0（包含控制结构）
  - 至少一个最小大小的空闲块（min_chunk_size）
- 如果堆太小，会触发断言错误

**步骤4：初始化桶数组**（[heap.c:525-527](file:///f:\workspace\src\zephyr-src\zephyrprj-3.7.0\zephyr\lib\heap\heap.c#L525-L527)）

```c
for (int i = 0; i < nb_buckets; i++) {
    h->buckets[i].next = 0;
}
```

- 将所有桶的next指针初始化为0
- 0表示桶为空，没有空闲块
- 这是桶的初始状态，后续通过free_list_add()添加块

**步骤5：设置块0（包含堆控制结构）**（[heap.c:530-532](file:///f:\workspace\src\zephyr-src\zephyrprj-3.7.0\zephyr\lib\heap\heap.c#L530-L532)）

```c
set_chunk_size(h, 0, chunk0_size);        // 设置块0大小
set_left_chunk_size(h, 0, 0);             // 块0左侧没有邻居
set_chunk_used(h, 0, true);              // 块0已使用（包含控制结构）
```

- **块0的ID为0**，从堆起始位置开始
- **大小为chunk0_size**，包含堆控制结构和桶数组
- **左侧邻居大小为0**，因为它是第一个块
- **标记为已使用**，因为包含系统元数据，不能分配给用户

**步骤6：设置块1（初始空闲块）**（[heap.c:535-536](file:///f:\workspace\src\zephyr-src\zephyrprj-3.7.0\zephyr\lib\heap\heap.c#L535-L536)）

```c
set_chunk_size(h, chunk0_size, heap_sz - chunk0_size);
set_left_chunk_size(h, chunk0_size, chunk0_size);
```

- **块1的ID为chunk0_size**，紧接在块0之后
- **大小为heap_sz - chunk0_size**，即剩余的所有可用空间
- **左侧邻居大小为chunk0_size**，正确指向块0
- **未设置使用标志**，默认为空闲状态（可以分配给用户）

**步骤7：设置结束标记块**（[heap.c:539-541](file:///f:\workspace\src\zephyr-src\zephyrprj-3.7.0\zephyr\lib\heap\heap.c#L539-L541)）

```c
set_chunk_size(h, heap_sz, 0);                        // 大小为0，表示结束
set_left_chunk_size(h, heap_sz, heap_sz - chunk0_size);  // 指向块1
set_chunk_used(h, heap_sz, true);                     // 标记为已使用
```

- **结束块的ID为heap_sz**，位于堆的最后
- **大小为0**，作为堆的边界标记
- **左侧邻居大小为heap_sz - chunk0_size**，指向块1
- **标记为已使用**，防止被分配

**步骤8：添加初始空闲块到空闲链表**（[heap.c:543](file:///f:\workspace\src\zephyr-src\zephyrprj-3.7.0\zephyr\lib\heap\heap.c#L543)）

```c
free_list_add(h, chunk0_size);
```

- 将块1（ID为chunk0_size）添加到空闲链表
- 根据块大小自动选择合适的桶
- 初始化完成后，整个堆只有这一个大的空闲块可供分配

**内存布局详解**：

```
地址偏移（单位）    内容说明
+------------------+
| 0               | 块0（已使用）
|                  | - 包含：z_heap结构 + buckets数组
|                  | - 大小：chunk0_size单位
|                  | - 头部：LEFT_SIZE=0, SIZE_AND_USED=chunk0_size<<1|1
+------------------+
| chunk0_size      | 块1（空闲）
|                  | - 包含：所有可用用户内存
|                  | - 大小：heap_sz - chunk0_size单位
|                  | - 头部：LEFT_SIZE=chunk0_size, SIZE_AND_USED=(heap_sz-chunk0_size)<<1
|                  | - 空闲链表：FREE_PREV/FREE_NEXT指向自己
+------------------+
| heap_sz          | 结束标记块（已使用）
|                  | - 大小：0
|                  | - 头部：LEFT_SIZE=heap_sz-chunk0_size, SIZE_AND_USED=1
+------------------+
```

**关键设计要点**：

1. **块0的特殊性**：
   - ID为0，从不分配给用户
   - 包含所有堆管理元数据
   - 始终标记为已使用

2. **结束标记块的作用**：
   - 作为堆的边界哨兵
   - 简化边界检查逻辑
   - 防止越界访问

3. **初始只有一个大空闲块**：
   - 所有可用内存集中在块1
   - 首次分配时会根据请求大小分割块1
   - 最大化内存利用率

4. **chunksz_t包含头部**：
   - chunk0_size包含块0的头部
   - heap_sz - chunk0_size包含块1的头部
   - 这是chunksz_t的设计特性

2.3.2 内存对齐策略
~~~~~~~~~~~~~~~~~~~~

**基本分配**（[heap.c:263-299](file:///f:\workspace\src\zephyr-src\zephyrprj-3.7.0\zephyr\lib\heap\heap.c#L263-L299)）：

- 保证返回地址是 ``sizeof(void*)`` 的倍数
- 小堆：4字节对齐
- 大堆：8字节对齐

**对齐分配**（[heap.c:301-377](file:///f:\workspace\src\zephyr-src\zephyrprj-3.7.0\zephyr\lib\heap\heap.c#L301-L377)）：

```c
void *sys_heap_aligned_alloc(struct sys_heap *heap, size_t align, size_t bytes)
{
    // 解析对齐和回退值
    rew = align & -align;
    if (align != rew) {
        align -= rew;
        gap = MIN(rew, chunk_header_bytes(h));
    } else {
        if (align <= chunk_header_bytes(h)) {
            return sys_heap_alloc(heap, bytes);
        }
        rew = 0;
        gap = chunk_header_bytes(h);
    }

    // 分配足够大的块
    chunksz_t padded_sz = bytes_to_chunksz(h, bytes + align - gap);
    chunkid_t c0 = alloc_chunk(h, padded_sz);

    // 对齐内存
    mem = (uint8_t *) ROUND_UP(mem + rew, align) - rew;
    chunk_unit_t *end = (chunk_unit_t *) ROUND_UP(mem + bytes, CHUNK_UNIT);

    // 分割并释放未使用的前缀
    if (c > c0) {
        split_chunks(h, c0, c);
        free_list_add(h, c0);
    }

    // 分割并释放未使用的后缀
    if (right_chunk(h, c) > c_end) {
        split_chunks(h, c, c_end);
        free_list_add(h, c_end);
    }

    return mem;
}
```

**对齐策略特点**：

- **支持回退**：允许在分配地址前预留空间
- **精确对齐**：支持任意2的幂次对齐
- **空间优化**：未使用的空间立即返回堆中

3. 高级特性分析
================

3.1 运行时统计 (heap_stats.c)
------------------------------

3.1.1 统计数据结构
~~~~~~~~~~~~~~~~~~~~

```c
struct sys_memory_stats {
    size_t free_bytes;           // 当前空闲字节数
    size_t allocated_bytes;       // 当前已分配字节数
    size_t max_allocated_bytes;   // 历史最大分配字节数
};
```

3.1.2 统计更新机制
~~~~~~~~~~~~~~~~~~~~

**分配时更新**（[heap.c:17-21](file:///f:\workspace\src\zephyr-src\zephyrprj-3.7.0\zephyr\lib\heap\heap.c#L17-L21)）：

```c
static inline void increase_allocated_bytes(struct z_heap *h, size_t num_bytes)
{
    h->allocated_bytes += num_bytes;
    h->max_allocated_bytes = MAX(h->max_allocated_bytes, h->allocated_bytes);
}
```

**释放时更新**（[heap.c:188-190](file:///f:\workspace\src\zephyr-src\zephyrprj-3.7.0\zephyr\lib\heap\heap.c#L188-L190)）：

```c
h->allocated_bytes -= chunksz_to_bytes(h, chunk_size(h, c));
```

**空闲链表操作时更新**（[heap.c:55-57, 93-95](file:///f:\workspace\src\zephyr-src\zephyrprj-3.7.0\zephyr\lib\heap\heap.c#L55-L57)）：

```c
h->free_bytes += chunksz_to_bytes(h, chunk_size(h, c));
```

3.1.3 统计API
~~~~~~~~~~~~~~~

**获取统计信息**（[heap_stats.c:11-24](file:///f:\workspace\src\zephyr-src\zephyrprj-3.7.0\zephyr\lib\heap\heap_stats.c#L11-L24)）：

```c
int sys_heap_runtime_stats_get(struct sys_heap *heap,
                            struct sys_memory_stats *stats)
{
    if ((heap == NULL) || (stats == NULL)) {
        return -EINVAL;
    }

    stats->free_bytes = heap->heap->free_bytes;
    stats->allocated_bytes = heap->heap->allocated_bytes;
    stats->max_allocated_bytes = heap->heap->max_allocated_bytes;

    return 0;
}
```

**重置最大值**（[heap_stats.c:26-33](file:///f:\workspace\src\zephyr-src\zephyrprj-3.7.0\zephyr\lib\heap\heap_stats.c#L26-L33)）：

```c
int sys_heap_runtime_stats_reset_max(struct sys_heap *heap)
{
    if (heap == NULL) {
        return -EINVAL;
    }

    heap->heap->max_allocated_bytes = heap->heap->allocated_bytes;

    return 0;
}
```

3.2 堆事件监听器 (heap_listener.c)
------------------------------------

3.2.1 监听器架构
~~~~~~~~~~~~~~~~~~

```c
struct heap_listener {
    sys_snode_t node;                    // 链表节点
    uintptr_t heap_id;                    // 堆标识符
    enum heap_event_types event;           // 事件类型
    union {
        heap_listener_alloc_cb_t alloc_cb;
        heap_listener_free_cb_t free_cb;
        heap_listener_resize_cb_t resize_cb;
    };
};
```

**事件类型**：

- ``HEAP_RESIZE``：堆大小改变
- ``HEAP_ALLOC``：内存分配
- ``HEAP_FREE``：内存释放
- ``HEAP_REALLOC``：内存重新分配

3.2.2 监听器管理
~~~~~~~~~~~~~~~~~~

**注册监听器**（[heap_listener.c:15-21](file:///f:\workspace\src\zephyr-src\zephyrprj-3.7.0\zephyr\lib\heap\heap_listener.c#L15-L21)）：

```c
void heap_listener_register(struct heap_listener *listener)
{
    k_spinlock_key_t key = k_spin_lock(&heap_listener_lock);

    sys_slist_append(&heap_listener_list, &listener->node);

    k_spin_unlock(&heap_listener_lock, key);
}
```

**通知机制**（[heap_listener.c:28-46](file:///f:\workspace\src\zephyr-src\zephyrprj-3.7.0\zephyr\lib\heap\heap_listener.c#L28-L46)）：

```c
void heap_listener_notify_alloc(uintptr_t heap_id, void *mem, size_t bytes)
{
    struct heap_listener *listener;
    k_spinlock_key_t key = k_spin_lock(&heap_listener_lock);

    SYS_SLIST_FOR_EACH_CONTAINER(&heap_listener_list, listener, node) {
        if (listener->heap_id == heap_id
            && listener->alloc_cb != NULL
            && listener->event == HEAP_ALLOC) {
            listener->alloc_cb(heap_id, mem, bytes);
        }
    }

    k_spin_unlock(&heap_listener_lock, key);
}
```

**设计特点**：

- **线程安全**：使用自旋锁保护监听器列表
- **过滤通知**：只通知匹配的监听器
- **零开销**：未启用时编译为空函数

3.3 堆完整性验证 (heap_validate.c)
------------------------------------

3.3.1 验证算法
~~~~~~~~~~~~~~~~

**多阶段验证策略**：

**阶段1：线性遍历验证**（[heap_validate.c:68-78](file:///f:\workspace\src\zephyr-src\zephyrprj-3.7.0\zephyr\lib\heap\heap_validate.c#L68-L78)）

```c
for (c = right_chunk(h, 0); c < h->end_chunk; c = right_chunk(h, c)) {
    if (!valid_chunk(h, c)) {
        return false;
    }
}
```

**阶段2：统计验证**（[heap_validate.c:80-94](file:///f:\workspace\src\zephyr-src\zephyrprj-3.7.0\zephyr\lib\heap\heap_validate.c#L80-L94)）

```c
#ifdef CONFIG_SYS_HEAP_RUNTIME_STATS
size_t allocated_bytes, free_bytes;
struct sys_memory_stats stat;

get_alloc_info(h, &allocated_bytes, &free_bytes);
sys_heap_runtime_stats_get(heap, &stat);
if ((stat.allocated_bytes != allocated_bytes) ||
    (stat.free_bytes != free_bytes)) {
    return false;
}
#endif
```

**阶段3：空闲链表验证**（[heap_validate.c:96-129](file:///f:\workspace\src\zephyr-src\zephyrprj-3.7.0\zephyr\lib\heap\heap_validate.c#L96-L129)）

```c
for (int b = 0; b <= bucket_idx(h, h->end_chunk); b++) {
    chunkid_t c0 = h->buckets[b].next;
    uint32_t n = 0;

    check_nexts(h, b);

    for (c = c0; c != 0 && (n == 0 || c != c0);
         n++, c = next_free_chunk(h, c)) {
        if (!valid_chunk(h, c)) {
            return false;
        }
        set_chunk_used(h, c, true);
    }

    bool empty = (h->avail_buckets & BIT(b)) == 0;
    bool zero = n == 0;

    if (empty != zero) {
        return false;
    }
}
```

**阶段4：交叉验证**（[heap_validate.c:131-163](file:///f:\workspace\src\zephyr-src\zephyrprj-3.7.0\zephyr\lib\heap\heap_validate.c#L131-L163)）

```c
// 确保所有空闲块都被找到
for (c = right_chunk(h, 0); c < h->end_chunk; c = right_chunk(h, c)) {
    if (!chunk_used(h, c) && !solo_free_header(h, c)) {
        return false;
    }
    set_chunk_used(h, c, solo_free_header(h, c));
}

// 再次检查空闲链表
for (int b = 0; b <= bucket_idx(h, h->end_chunk); b++) {
    chunkid_t c0 = h->buckets[b].next;
    int n = 0;

    if (c0 == 0) {
        continue;
    }

    for (c = c0; n == 0 || c != c0; n++, c = next_free_chunk(h, c)) {
        if (chunk_used(h, c)) {
            return false;
        }
        set_chunk_used(h, c, true);
    }
}
```

**阶段5：恢复状态**（[heap_validate.c:165-172](file:///f:\workspace\src\zephyr-src\zephyrprj-3.7.0\zephyr\lib\heap\heap_validate.c#L165-L172)）

```c
// 恢复使用标志
for (c = right_chunk(h, 0); c < h->end_chunk; c = right_chunk(h, c)) {
    set_chunk_used(h, c, !chunk_used(h, c));
}
```

3.3.2 验证检查点
~~~~~~~~~~~~~~~~~~

**块有效性检查**（[heap_validate.c:30-51](file:///f:\workspace\src\zephyr-src\zephyrprj-3.7.0\zephyr\lib\heap\heap_validate.c#L30-L51)）：

```c
static bool valid_chunk(struct z_heap *h, chunkid_t c)
{
    VALIDATE(chunk_size(h, c) > 0);
    VALIDATE((c + chunk_size(h, c)) <= h->end_chunk);
    VALIDATE(in_bounds(h, c));
    VALIDATE(right_chunk(h, left_chunk(h, c)) == c);
    VALIDATE(left_chunk(h, right_chunk(h, c)) == c);
    if (chunk_used(h, c)) {
        VALIDATE(!solo_free_header(h, c));
    } else {
        VALIDATE(chunk_used(h, left_chunk(h, c)));
        VALIDATE(chunk_used(h, right_chunk(h, c)));
        if (!solo_free_header(h, c)) {
            VALIDATE(in_bounds(h, prev_free_chunk(h, c)));
            VALIDATE(in_bounds(h, next_free_chunk(h, c)));
        }
    }
    return true;
}
```

**检查项目**：

- 块大小有效性
- 边界检查
- 邻居一致性
- 使用状态一致性
- 空闲链表指针有效性

3.4 堆信息打印 (heap_info.c)
------------------------------

3.4.1 信息输出格式
~~~~~~~~~~~~~~~~~~~~

**桶信息**（[heap_info.c:26-42](file:///f:\workspace\src\zephyr-src\zephyrprj-3.7.0\zephyr\lib\heap\heap_info.c#L26-L42)）：

```
  bucket#    min units        total      largest      largest
             threshold       chunks      (units)      (bytes)
  -----------------------------------------------------------
       0            0           10           32          256
       1            1            5           64          512
       2            3            3          128         1024
```

**块详细信息**（[heap_info.c:44-52](file:///f:\workspace\src\zephyr-src\zephyrprj-3.7.0\zephyr\lib\heap\heap_info.c#L44-L52)）：

```
Chunk dump:
chunk    0: [*] size=  32 left=   0 right=  32
chunk   32: [-] size= 128 left=   0 right= 160
chunk  160: [*] size=  64 left=  32 right= 224
```

**符号说明**：

- ``*``：已使用块
- ``-``：空闲块
- ``.``：单独空闲头部

3.4.2 统计摘要
~~~~~~~~~~~~~~~~

```c
get_alloc_info(h, &allocated_bytes, &free_bytes);
total = h->end_chunk * CHUNK_UNIT + chunk_header_bytes(h);
overhead = total - free_bytes - allocated_bytes;

printk("\n%zd free bytes, %zd allocated bytes, overhead = %zd bytes (%zd.%zd%%)\n",
       free_bytes, allocated_bytes, overhead,
       (1000 * overhead + total / 2) / total / 10,
       (1000 * overhead + total / 2) / total % 10);
```

3.5 压力测试 (heap_stress.c)
------------------------------

3.5.1 测试框架
~~~~~~~~~~~~~~~~

**测试记录结构**：

```c
struct z_heap_stress_rec {
    void *(*alloc_fn)(void *arg, size_t bytes);
    void (*free_fn)(void *arg, void *p);
    void *arg;
    size_t total_bytes;
    struct z_heap_stress_block *blocks;
    size_t nblocks;
    size_t blocks_alloced;
    size_t bytes_alloced;
    uint32_t target_percent;
};
```

3.5.2 随机算法
~~~~~~~~~~~~~~~~

**LCG随机数生成器**（[heap_stress.c:28-35](file:///f:\workspace\src\zephyr-src\zephyrprj-3.7.0\zephyr\lib\heap\heap_stress.c#L28-L35)）：

```c
static uint32_t rand32(void)
{
    static uint64_t state = 123456789; // 种子

    state = state * 2862933555777941757UL + 3037000493UL;

    return (uint32_t)(state >> 32);
}
```

**分配/释放决策**（[heap_stress.c:37-69](file:///f:\workspace\src\zephyr-src\zephyrprj-3.7.0\zephyr\lib\heap\heap_stress.c#L37-L69)）：

```c
static bool rand_alloc_choice(struct z_heap_stress_rec *sr)
{
    if (sr->blocks_alloced == 0) {
        return true;  // 必须分配
    } else if (sr->blocks_alloced >= sr->nblocks) {
        return false;  // 必须释放
    } else {
        uint32_t full_pct = (100 * sr->bytes_alloced) / sr->total_bytes;
        uint32_t target = sr->target_percent ? sr->target_percent : 1;
        uint32_t free_chance = 0xffffffffU;

        if (full_pct < sr->target_percent) {
            free_chance = full_pct * (0x80000000U / target);
        }

        return rand32() > free_chance;
    }
}
```

**大小选择**（[heap_stress.c:71-80](file:///f:\workspace\src\zephyr-src\zephyrprj-3.7.0\zephyr\lib\heap\heap_stress.c#L71-L80)）：

```c
static size_t rand_alloc_size(struct z_heap_stress_rec *sr)
{
    ARG_UNUSED(sr);

    // 对数分布，小块更频繁
    int scale = 4 + __builtin_clz(rand32());

    return rand32() & BIT_MASK(scale);
}
```

3.5.3 测试循环
~~~~~~~~~~~~~~~~

```c
for (uint32_t i = 0; i < op_count; i++) {
    if (rand_alloc_choice(&sr)) {
        // 分配
        size_t sz = rand_alloc_size(&sr);
        void *p = sr.alloc_fn(sr.arg, sz);

        result->total_allocs++;
        if (p != NULL) {
            result->successful_allocs++;
            sr.blocks[sr.blocks_alloced].ptr = p;
            sr.blocks[sr.blocks_alloced].sz = sz;
            sr.blocks_alloced++;
            sr.bytes_alloced += sz;
        }
    } else {
        // 释放
        int b = rand_free_choice(&sr);
        void *p = sr.blocks[b].ptr;
        size_t sz = sr.blocks[b].sz;

        result->total_frees++;
        sr.blocks[b] = sr.blocks[sr.blocks_alloced - 1];
        sr.blocks_alloced--;
        sr.bytes_alloced -= sz;
        sr.free_fn(sr.arg, p);
    }
    result->accumulated_in_use_bytes += sr.bytes_alloced;
}
```

4. 多堆管理 (multi_heap.c)
==========================

4.1 多堆架构
--------------

4.1.1 数据结构
~~~~~~~~~~~~~~~~

```c
struct sys_multi_heap_rec {
    struct sys_heap *heap;
    void *user_data;
};

struct sys_multi_heap {
    unsigned int nheaps;
    sys_multi_heap_fn_t choice;
    struct sys_multi_heap_rec heaps[MAX_MULTI_HEAPS];
};
```

4.1.2 选择函数
~~~~~~~~~~~~~~~~

```c
typedef void *(*sys_multi_heap_fn_t)(struct sys_multi_heap *mheap, 
                                     void *cfg,
                                     size_t align, 
                                     size_t size);
```

**选择函数职责**：

- 根据配置参数选择合适的堆
- 可以考虑堆的状态（可用内存、碎片等）
- 可以对齐分配
- 返回分配的内存或NULL

4.2 多堆操作
------------

4.2.1 初始化
~~~~~~~~~~~~

```c
void sys_multi_heap_init(struct sys_multi_heap *heap, 
                       sys_multi_heap_fn_t choice_fn)
{
    heap->nheaps = 0;
    heap->choice = choice_fn;
}
```

4.2.2 添加堆
~~~~~~~~~~~~

```c
void sys_multi_heap_add_heap(struct sys_multi_heap *mheap,
                          struct sys_heap *heap, 
                          void *user_data)
{
    __ASSERT_NO_MSG(mheap->nheaps < ARRAY_SIZE(mheap->heaps));

    mheap->heaps[mheap->nheaps].heap = heap;
    mheap->heaps[mheap->nheaps++].user_data = user_data;

    // 按内存地址排序
    for (int i = 0; i < mheap->nheaps; i++) {
        struct sys_multi_heap_rec swap;
        int lowest = -1;
        uintptr_t lowest_addr = UINTPTR_MAX;

        for (int j = i; j < mheap->nheaps; j++) {
            uintptr_t haddr = (uintptr_t)mheap->heaps[j].heap->heap;

            if (haddr < lowest_addr) {
                lowest = j;
                lowest_addr = haddr;
            }
        }
        swap = mheap->heaps[i];
        mheap->heaps[i] = mheap->heaps[lowest];
        mheap->heaps[lowest] = swap;
    }
}
```

**设计特点**：

- **地址排序**：堆按内存地址排序，便于查找
- **用户数据**：每个堆可以关联用户数据
- **最大堆数**：最多支持8个堆

4.2.3 分配
~~~~~~~~~~~~

```c
void *sys_multi_heap_alloc(struct sys_multi_heap *mheap, 
                         void *cfg, 
                         size_t bytes)
{
    return mheap->choice(mheap, cfg, 0, bytes);
}
```

4.2.4 释放
~~~~~~~~~~~~

```c
void sys_multi_heap_free(struct sys_multi_heap *mheap, void *block)
{
    const struct sys_multi_heap_rec *heap;

    heap = sys_multi_heap_get_heap(mheap, block);

    if (heap != NULL) {
        sys_heap_free(heap->heap, block);
    }
}
```

4.2.5 堆查找
~~~~~~~~~~~~

```c
const struct sys_multi_heap_rec *sys_multi_heap_get_heap(
    const struct sys_multi_heap *mheap, void *addr)
{
    uintptr_t haddr, baddr = (uintptr_t) addr;
    int i;

    // 线性搜索（未来可优化为二分搜索）
    for (i = 0; i < mheap->nheaps; i++) {
        haddr = (uintptr_t)mheap->heaps[i].heap->heap;
        if (baddr < haddr) {
            break;
        }
    }

    return &mheap->heaps[i-1];
}
```

**性能考虑**：

- 当前实现使用线性搜索
- 由于堆数量通常较少（最多8个），性能可接受
- 未来可优化为二分搜索

5. 共享多堆 (shared_multi_heap.c)
=================================

5.1 共享多堆架构
----------------

5.1.1 属性定义
~~~~~~~~~~~~~~~~

```c
enum shared_multi_heap_attr {
    SMH_REG_ATTR_CACHEABLE,      // 可缓存
    SMH_REG_ATTR_NON_CACHEABLE,   // 不可缓存
    SMH_REG_ATTR_NUM,
};
```

5.1.2 区域结构
~~~~~~~~~~~~~~~~

```c
struct shared_multi_heap_region {
    uint32_t attr;      // 属性
    uintptr_t addr;      // 起始地址
    size_t size;        // 大小
};
```

5.2 共享多堆实现
----------------

5.2.1 数据结构
~~~~~~~~~~~~~~~~

```c
static struct sys_multi_heap shared_multi_heap;

static struct {
    struct sys_heap heap_pool[MAX_MULTI_HEAPS];
    unsigned int heap_cnt;
} smh_data[MAX_SHARED_MULTI_HEAP_ATTR];
```

**设计特点**：

- **属性分组**：每种属性维护一个堆池
- **全局实例**：单个共享多堆实例
- **运行时添加**：支持运行时添加内存区域

5.2.2 选择函数
~~~~~~~~~~~~~~~~

```c
static void *smh_choice(struct sys_multi_heap *mheap, 
                       void *cfg, 
                       size_t align, 
                       size_t size)
{
    struct sys_heap *h;
    enum shared_multi_heap_attr attr;
    void *block;

    attr = (enum shared_multi_heap_attr)(long) cfg;

    if (attr >= MAX_SHARED_MULTI_HEAP_ATTR || size == 0) {
        return NULL;
    }

    block = NULL;

    // 遍历所有具有指定属性的堆
    for (size_t hdx = 0; hdx < smh_data[attr].heap_cnt; hdx++) {
        h = &smh_data[attr].heap_pool[hdx];

        if (h->heap == NULL) {
            return NULL;
        }

        block = sys_heap_aligned_alloc(h, align, size);
        if (block != NULL) {
            break;
        }
    }

    return block;
}
```

**分配策略**：

- 按属性选择堆池
- 顺序尝试每个堆
- 第一个成功的分配返回

5.2.3 添加区域
~~~~~~~~~~~~~~~~

```c
int shared_multi_heap_add(struct shared_multi_heap_region *region, 
                       void *user_data)
{
    enum shared_multi_heap_attr attr;
    struct sys_heap *h;
    unsigned int slot;

    attr = region->attr;

    if (attr >= MAX_SHARED_MULTI_HEAP_ATTR) {
        return -EINVAL;
    }

    if (smh_data[attr].heap_cnt >= MAX_MULTI_HEAPS) {
        return -ENOMEM;
    }

    slot = smh_data[attr].heap_cnt;
    h = &smh_data[attr].heap_pool[slot];

    sys_heap_init(h, (void *) region->addr, region->size);
    sys_multi_heap_add_heap(&shared_multi_heap, h, user_data);

    smh_data[attr].heap_cnt++;

    return 0;
}
```

5.2.4 分配API
~~~~~~~~~~~~~~~~

```c
void *shared_multi_heap_alloc(enum shared_multi_heap_attr attr, 
                            size_t bytes)
{
    if (attr >= MAX_SHARED_MULTI_HEAP_ATTR) {
        return NULL;
    }

    return sys_multi_heap_alloc(&shared_multi_heap, 
                             (void *)(long) attr, 
                             bytes);
}
```

5.2.5 初始化
~~~~~~~~~~~~~~~~

```c
int shared_multi_heap_pool_init(void)
{
    static atomic_t state;

    if (!atomic_cas(&state, 0, 1)) {
        return -EALREADY;
    }

    sys_multi_heap_init(&shared_multi_heap, smh_choice);

    atomic_set(&state, 1);

    return 0;
}
```

**线程安全**：

- 使用原子操作确保单次初始化
- 防止并发初始化

6. 配置系统分析 (Kconfig)
==========================

6.1 核心配置选项
----------------

6.1.1 验证选项
~~~~~~~~~~~~~~~~

```
config SYS_HEAP_VALIDATE
    bool "Internal heap validity checking"
    depends on ASSERT
    help
      The sys_heap implementation is instrumented for extensive
      internal validation. Leave this off by default, unless
      modifying the heap code or (maybe) when running in
      environments that require sensitive detection of memory
      corruption.

      Use for testing and validation only.
```

**使用场景**：

- 堆代码开发和调试
- 内存损坏检测
- 测试环境

6.1.2 压力测试选项
~~~~~~~~~~~~~~~~~~~~

```
config SYS_HEAP_STRESS
    bool "General purpose heap stress test"
    help
      Stresses the heap.

      Use for testing and validation only.
```

6.1.3 信息输出选项
~~~~~~~~~~~~~~~~~~~~

```
config SYS_HEAP_INFO
    bool "Heap internal structure information"
    help
      Enables support for printing heap internal structure
      information to the console.

      Use for debugging only.
```

6.1.4 分配循环选项
~~~~~~~~~~~~~~~~~~~~

```
config SYS_HEAP_ALLOC_LOOPS
    int "Number of tries in the inner heap allocation loop"
    default 3
    help
      The sys_heap allocator bounds the number of tries from the
      smallest chunk level (the one that might not fit the
      requested allocation) to maintain constant time performance.
      Setting this to a high level will cause the heap to return
      more successful allocations in situations of high
      fragmentation, at the cost of potentially significant
      (linear time) searching of the free list. The default is
      three, which results in an allocator with good statistical
      properties ("most" allocations that fit will succeed) but
      keeps the maximum runtime at a tight bound so that the heap
      is useful in locked or ISR contexts.
```

**性能权衡**：

- 默认值3：87.5%成功率，常量时间
- 高值：更高成功率，但可能线性时间
- 低值：更快，但成功率降低

6.1.5 运行时统计选项
~~~~~~~~~~~~~~~~~~~~~~

```
config SYS_HEAP_RUNTIME_STATS
    bool "System heap runtime statistics"
    help
      Gather system heap runtime statistics.
```

6.1.6 监听器选项
~~~~~~~~~~~~~~~~~~

```
config SYS_HEAP_LISTENER
    bool "sys_heap event notifications"
    select HEAP_LISTENER
    help
      This allows application to listen for sys_heap events,
      such as memory allocation and de-allocation.
```

6.2 堆大小配置
----------------

6.2.1 小堆模式
~~~~~~~~~~~~~~~~

```
config SYS_HEAP_SMALL_ONLY
    bool "Support for small heaps only"
    help
      Select this to optimize the code and memory usage if all your
      heaps are 262136 bytes or less.
```

**特点**：

- 最大堆大小：262136字节
- 块ID和大小：16位
- 头部大小：4字节
- 最小内存开销

6.2.2 大堆模式
~~~~~~~~~~~~~~~~

```
config SYS_HEAP_BIG_ONLY
    bool "Support for big heaps only"
    help
      Select this to optimize the code for big heaps only. This can
      accommodate any heap size but memory usage won't be as
      efficient with small sized heaps.
```

**特点**：

- 最大堆大小：16383MB
- 块ID和大小：32位
- 头部大小：8字节
- 适合大堆场景

6.2.3 自适应模式
~~~~~~~~~~~~~~~~~~

```
config SYS_HEAP_AUTO
    bool "Support for both small and big heaps at run time"
    help
      This option optimizes memory usage for each heap according to
      their size albeit with some overhead in code size and execution.
```

**特点**：

- 运行时自适应
- 最优内存效率
- 稍高的代码大小和执行开销

6.3 多堆配置
--------------

6.3.1 多堆管理器
~~~~~~~~~~~~~~~~~~

```
config MULTI_HEAP
    bool "Multi-heap manager"
    help
      Allows multiple sys_heap regions to be unified under a single
      allocation API. Sometimes apps need to ability to share multiple
      discontiguous regions in a single "heap", or
      to have memory of different "types" be allocated heuristically based
      on usage (e.g. cacheability, latency, power...). This allows a
      user-specified function to select the underlying memory to use for
      each application.
```

**应用场景**：

- 不连续内存区域
- 不同类型的内存（缓存、非缓存）
- 不同延迟要求的内存

6.3.2 共享多堆
~~~~~~~~~~~~~~~~

```
config SHARED_MULTI_HEAP
    bool "Shared multi-heap manager"
    select MULTI_HEAP
    help
      Enable support for a shared multi-heap manager that uses the
      multi-heap allocator to manage a set of reserved memory regions with
      different capabilities / attributes (cacheable, non-cacheable,
      etc...) defined in the DT.
```

**特点**：

- 基于设备树定义
- 支持不同属性
- 自动管理

7. 性能分析
============

7.1 时间复杂度
----------------

| 操作 | 时间复杂度 | 说明 |
|------|-----------|------|
| 分配 | O(1) | 两阶段策略，最坏情况常量时间 |
| 释放 | O(1) | 链表操作，即时合并 |
| 合并 | O(1) | 最多两次合并 |
| 分割 | O(1) | 简单的指针操作 |
| 验证 | O(n) | 遍历所有块 |
| 信息打印 | O(n) | 遍历所有块 |

7.2 空间复杂度
----------------

**内存开销**：

- **小堆**：每个块4字节头部 + 4字节结束标记
- **大堆**：每个块8字节头部 + 8字节结束标记
- **桶数组**：``log2(heap_size) * sizeof(chunkid_t)`` 字节
- **统计信息**（可选）：24字节

**开销百分比**：

- 小堆（8KB）：约1-2%
- 大堆（1MB）：约0.1-0.2%

7.3 碎片化分析
----------------

**内部碎片**：

- 最小块：8字节（小堆）或16字节（大堆）
- 平均内部碎片：约4字节

**外部碎片**：

- 即时合并策略最小化外部碎片
- 两阶段分配策略减少碎片
- 实际碎片率通常<5%

8. 最佳实践
============

8.1 堆大小配置
----------------

**小堆场景**：

```kconfig
CONFIG_SYS_HEAP_SMALL_ONLY=y
CONFIG_SYS_HEAP_ALLOC_LOOPS=3
```

**大堆场景**：

```kconfig
CONFIG_SYS_HEAP_BIG_ONLY=y
CONFIG_SYS_HEAP_ALLOC_LOOPS=5
```

**自适应场景**：

```kconfig
CONFIG_SYS_HEAP_AUTO=y
CONFIG_SYS_HEAP_ALLOC_LOOPS=3
```

8.2 调试配置
----------------

**开发调试**：

```kconfig
CONFIG_SYS_HEAP_VALIDATE=y
CONFIG_SYS_HEAP_INFO=y
CONFIG_SYS_HEAP_RUNTIME_STATS=y
CONFIG_SYS_HEAP_LISTENER=y
```

**生产环境**：

```kconfig
# 禁用所有调试选项以获得最佳性能
```

8.3 内存使用监控
----------------

**定期检查**：

```c
#ifdef CONFIG_SYS_HEAP_RUNTIME_STATS
void monitor_heap_usage(struct sys_heap *heap)
{
    struct sys_memory_stats stats;
    
    sys_heap_runtime_stats_get(heap, &stats);
    
    printk("Heap usage: %zu/%zu bytes (%.1f%%)\n",
           stats.allocated_bytes,
           stats.allocated_bytes + stats.free_bytes,
           100.0 * stats.allocated_bytes / 
           (stats.allocated_bytes + stats.free_bytes));
    
    if (stats.allocated_bytes > 
        (stats.allocated_bytes + stats.free_bytes) * 0.9) {
        printk("WARNING: Heap nearly full!\n");
    }
}
#endif
```

8.4 内存泄漏检测
----------------

**使用监听器**：

```c
#ifdef CONFIG_SYS_HEAP_LISTENER
static size_t total_alloced = 0;
static size_t total_freed = 0;

void on_alloc(uintptr_t heap_id, void *mem, size_t bytes)
{
    total_alloced += bytes;
}

void on_free(uintptr_t heap_id, void *mem, size_t bytes)
{
    total_freed += bytes;
}

HEAP_LISTENER_ALLOC_DEFINE(alloc_listener, 
                         HEAP_ID_FROM_POINTER(&my_heap), 
                         on_alloc);
HEAP_LISTENER_FREE_DEFINE(free_listener, 
                        HEAP_ID_FROM_POINTER(&my_heap), 
                        on_free);

void check_memory_leak(void)
{
    if (total_alloced != total_freed) {
        printk("Memory leak detected: %zu bytes\n",
               total_alloced - total_freed);
    }
}
#endif
```

9. 常见问题与解决方案
========================

9.1 堆内存不足
----------------

**问题现象**：

- ``sys_heap_alloc()`` 返回NULL
- 系统行为异常

**解决方案**：

1. 增加堆大小
2. 优化内存使用
3. 使用内存池管理小对象
4. 启用运行时统计监控使用情况

9.2 内存损坏
----------------

**问题现象**：

- 堆验证失败
- 系统崩溃
- 数据损坏

**解决方案**：

1. 启用堆验证
2. 使用内存检测工具（ASAN）
3. 检查缓冲区边界
4. 使用 ``sys_heap_usable_size()`` 了解实际大小

9.3 内存碎片
----------------

**问题现象**：

- 有足够空闲内存但无法分配大块
- 分配成功率下降

**解决方案**：

1. 增加 ``CONFIG_SYS_HEAP_ALLOC_LOOPS`` 值
2. 使用内存池管理固定大小对象
3. 减少频繁的小分配
4. 定期释放和重新分配

9.4 性能问题
----------------

**问题现象**：

- 分配/释放速度慢
- 中断延迟增加

**解决方案**：

1. 减小 ``CONFIG_SYS_HEAP_ALLOC_LOOPS`` 值
2. 禁用不必要的调试选项
3. 使用小堆模式（如果适用）
4. 考虑使用内存池

10. 总结
========

Zephyr 的堆内存管理系统是一个设计精良、实现高效的内存管理方案，具有以下核心优势：

10.1 技术优势
--------------

- **高效性**：常量时间复杂度，适合实时系统
- **空间效率**：最小化内存开销
- **碎片抗性**：智能分配和合并策略
- **可配置性**：丰富的配置选项
- **可扩展性**：支持多堆、共享堆等高级特性
- **可调试性**：完善的调试和监控工具

10.2 适用场景
--------------

- 资源受限的嵌入式系统
- 需要确定性性能的实时系统
- 需要灵活内存管理的应用
- 需要多种内存类型的系统

10.3 发展方向
--------------

- 进一步优化分配算法
- 增强内存保护机制
- 改进碎片管理
- 扩展多堆功能
- 增强调试工具

通过深入理解 Zephyr 堆内存的实现机制，开发者可以更好地利用这一强大的内存管理系统，开发出高效、可靠的嵌入式应用。
