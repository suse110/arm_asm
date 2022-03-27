//  宏参数的prescan

// prescan的定义：当一个宏参数被放进宏体时，这个宏参数会首先被全部展开(有例外，见下文)。
// 当展开后的宏参数被放进宏体时， 预处理器对新展开的宏体进行第二次扫描，并继续展开。例如：

#define PARAM( x ) x 
#define ADDPARAM( x ) INT_##x 
PARAM( ADDPARAM( 1 ) );
// 因为ADDPARAM( 1 ) 是作为PARAM的宏参数，所以先将ADDPARAM( 1 )展开为INT_1，然后再
// 将INT_1放进PARAM。例外情况是，如果PARAM宏里对宏参数使用了#或##，那么宏参数不会被展开：


#define PARAM( x ) #x 
#define ADDPARAM( x ) INT_##x
PARAM( ADDPARAM( 1 ) ); //将被展开为”ADDPARAM( 1 )”。

// 所以此时要得到“INT_1”的结果，必须加入一个中间宏：


#define PARAM(x) PARAM1(x)
#define PARAM1( x ) #x
PARAM( ADDPARAM( 1 ) );

// 此时的结果将会是“INT_1”。根据prescan原则，当ADDPARAM(1)传入，会展开得到INT_1，
// 然后将INT_1带入PARAM1宏，最终得到“INT_1”的结果。