1. cache 分类
   1. 全相联映射
      * 主存块可以放在cache的任意位置

    假设有一个256M的内存，cache有8个cache line，每个cache line有64字节，cache 大小为8*64=512字节
    2^28=256MB, 内存地址共有28位，要将所有内存地址映射到cache内，那要将内存分块，每块内存大小位cache line的大小，那么，需要的内存总块数=2^28/2^6 = 2^22，需要22bits来表示块数，剩余6bit来表示数据在cache line中的偏移
    块号 = 22 bits, 块内偏移 = 6 bits

    valid_bit 表示cache中的数据是否有效，刚开始全为0，表示cache 中的数据全部无效
    * 优点:cache 存储空间利用充分，命中率高
    * 缺点:查找tag最慢，有可能需要对比所有cache line的tag

    ```
valid_bit  tag(22 bit)        cache         块号        内存
                            0 *------*       0        *------*
    1          3              |      |<---|           |      |
                            1 *------*    |  1        *------*
    0                         |      |    |           |      |
                            2 *------*    |  2        *------*
    0                         |      |    ------------|      |
                            3 *------*       3        *------*
    0                         |      |                |      |
                            4 *------*                 ......
    0                         |      |                |      |
                            5 *------*     2^22 - 3   *------*
    0                         |      |                |      |
                            6 *------*     2^22 - 2   *------*
    0                         |      |                |      |
                            7 *------*     2^22 - 1   *------*
    0                         |      |                |      |
                              *------*                *------*
    ```
    1. 首先方位地址0x000000C3(11000011)时，此时cache中还没有加载内存中的数据到cache line，valid_bit=0，发生cache miss，直接访问主存，通过映射算法将内存块2(0x000000C3所在内存块)映射到cache line 0，tag中保存内存的块号，并将valid_bit设为1
    2. CPU再访问内存地址0x000000C3时，将内存地址前22位与cache的所有tag对比，发现tag 匹配，且valid_bit为1，则cache hit，直接从cache line 块内地址3中取数据
   


   2. 直接映射
      1. 每个主存块只能放在一个特定位置:cache块号=主存块号%cache总块数
         1. cache总块数=8=2^3 ，主存块号=2^22 ,cache块号=2^22%2^3 ，这里就相当于计算机硬件不需要关心主存块号后面3个bit的值，它表示主存块应该对应的cache line，它们的关系是固定的，0号主存块和8号主存块都必须映射到cache line 0，那么，当CPU要访问内存块0或者8时，这时候CPU怎么知道cache line 0中的数据是内存块0的还是内存块8的呢？直接去看cache line 0的tag，主存块0和8的tag是不一样的。
      2. 优点:对于任意一个地址，只需要对比一个tag，速度最快
      3. 缺点:cache存储空间利用不充分，命中率低
    ```
valid_bit  tag(22-3 bit)        cache         块号        内存
                            0 *------*       0        *------*
    0                         |      |<---------------|      |
                            1 *------*     | 1        *------*
    0                         |      |     |          |      |
                            2 *------*     |           ......
    0                         |      |     |          |      |
                            3 *------*     | 8        *------*
    0                         |      |     |----------|      |
                            4 *------*                 ......
    0                         |      |                |      |
                            5 *------*     2^22 - 3   *------*
    0                         |      |                |      |
                            6 *------*     2^22 - 2   *------*
    0                         |      |                |      |
                            7 *------*     2^22 - 1   *------*
    0                         |      |                |      |
                              *------*                *------*
    ```
    0号和8号主存块都放在cache line 0，所以缺点很明显，其他地方有空闲cache块，但时8号主存块不能使用，灵活性差。

    当cache总块数=2^n，则主存块号末尾n位直接反映它在cache中的位置(应该在那条cache line)。将主存块号的其余位作为tag即可

   2. 组相联映射
    1. cache块分若干组，每个主存块可放在特定分组中的任意一个位置:组号=主存块号%分组数
    2. n路组相联映射--表示每n个cache line为一组
    3. 主存块号=2^22 ,分组数=2^2, 组号=2^22%2^2 ，这里就相当于计算机硬件不需要关心主存块号后面2个bit的值，它表示主存块应该对应的cache set
    4. 优点：另外两种方式的折中，效果较好
    

    ```
valid_bit  tag(22-2 bit)        cache                            块号        内存
                            0 *------*                             0        *------*
    0                         |      |---                  -----------------|      |
                            1 *------*  |--- set 0 <-------|       1        *------*
    0                         |      |---                  |                |      |
                            2 *------*                     |                 ......
    0                         |      |---                  |                |      |
                            3 *------*  |--- set 1         |       4        *------*
    0                         |      |---                  |----------------|      |
                            4 *------*                                       ......
    0                         |      |---                                   |      |
                            5 *------*  |--- set 2               2^22 - 3   *------*
    0                         |      |---                                   |      |
                            6 *------*                           2^22 - 2   *------*
    0                         |      |---                                   |      |
                            7 *------*  |--- set 3               2^22 - 1   *------*
    0                         |      |---                                   |      |
                              *------*                                      *------*
    ```
    主存块0和4都映射到了set 0