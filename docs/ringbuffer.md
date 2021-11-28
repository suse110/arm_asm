[A lockless ring-buffer](https://lwn.net/Articles/340400/)

[Lock-Free Multi-Producer Multi-Consumer Queue on Ring Buffer](https://www.linuxjournal.com/content/lock-free-multi-producer-multi-consumer-queue-ring-buffer)
[DPDK中无锁环形队列实现](https://www.codeleading.com/article/3685653062/)
无锁队列
    最早在这边论文提出 John D.Valois <<Implementing Lock-Free Queues>> 1994
    核心思想: 通过CAS(compare and swap)操作来取代互斥锁
    CAS:
    ```
        bool compare_and_swap(int *addr, int oldval, int newval) {
            if (*addr != oldval)
                return false;
            *addr = newval;
            return true;
        }
    ```
    * ABA问题
       * 介绍
        1. 进程P1在共享变量中读到值为A
        2. P1被抢占，进程P2执行
        3. P2把共享变量的值从A改到B，再改回到A，此时被P1抢占
        4. P1回来看到共享变量没有被改变，于是继续执行
       * 实际场景
        1. 队列只有1个资源 ，进行CAS操作，将head的位置指向原本第二个元素
        2. 在上一步CAS还未开始的时候，另一个出队列操作抢先把head位置的资源释放
        3. 在上一步CAS还未开始的时候，又来一个入队操作，把head的内存加入了队尾
        4. 这时候执行CAS操作
    * 如何解决ABA问题
      * 论文[Simple, Fast, and Practical Non-Blocking and Blocking Concurrent Queue Algorithms]
      * 利用Double-CAS 来解决此问题，每访问一个节点，都用引用计数方式给其加1
    * 参考
        * 左耳朵耗子 博客
        * https://github.com/axwsbg/Implementing-LockFree-Queues/