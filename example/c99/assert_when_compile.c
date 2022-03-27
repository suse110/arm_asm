/*这其实是使用C语言的宏来实现的非常有“创意”的一个功能。有些时候，特别是在进行内核编程时，
在编译时就能够进行条件检查的断言，而不是在运行时进行，这非常有用。不幸的是，C99标准还不
支持任何编译时的断言。但是，我们可以利用预处理来生成代码，这些代码只有在某些条件成立时才
会通过编译（最好是那种不做实际功能的命令）。有各种各样不同的方式都可以做到这一点，通常都
是建立一个大小为负的数组或结构体。最常用的方式如下：
*/

/* Force a compilation error if condition is false, but also produce a result
  * (of value 0 and type size_t), so it can be used e.g. in a structure
  * initializer (or wherever else comma expressions aren't permitted). */
/* Linux calls these BUILD_BUG_ON_ZERO/_NULL, which is rather misleading. */
#define STATIC_ZERO_ASSERT(condition) (sizeof(struct { int:-!(condition); })    )
#define STATIC_NULL_ASSERT(condition) ((void *)STATIC_ZERO_ASSERT(condition)    )
 
/* Force a compilation error if condition is false */
#define STATIC_ASSERT(condition) ((void)STATIC_ZERO_ASSERT(condition))
/*
如果(condition)计算结果为一个非零值（即C中的真值），即! (condition)为零值，那么代码将
能顺利地编译，并生成一个大小为零的结构体。如果(condition)结果为0（在C真为假），那么在试
图生成一个负大小的结构体时，就会产生编译错误。它的使用非常简单，如果任何某假设条件能够静
态地检查，那么它就可以在编译时断言。例如，在上面提到的标志列表中，标志集合的类型为uint32_t，
所以，我们可以做以下断言：


STATIC_ASSERT(Total <= 32)
它扩展为：
    ( void ) sizeof ( struct { int :-!(Total <= 32) })
现在，假设Total<=32。那么-!(Total <= 32)等于0，所以这行代码相当于：
    ( void ) sizeof ( struct { int : 0 })
这是一个合法的C代码。现在假设标志不止32个，那么-!(Total <= 32)等于-1，所以这时代码就相当于：
    ( void ) sizeof ( struct { int : -1 } )
因为位宽为负，所以可以确定，如果标志的数量超过了我们指派的空间，那么编译将会失败。
*/