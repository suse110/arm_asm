//macro list
#include <stdbool.h>

#define FLAG_LIST(_)                   \
     _(InWorklist)                      \
     _(EmittedAtUses)                   \
     _(LoopInvariant)                   \
     _(Commutative)                     \
     _(Movable)                         \
     _(Lowered)                         \
     _(Guard)

#define DEFINE_FLAG(flag) flag,
    enum Flag {
        None = 0,
        FLAG_LIST(DEFINE_FLAG)
        Total
    };
#undef DEFINE_FLAG

/*
对FLAG_LIST(DEFINE_FLAG)做扩展能够得到如下代码：

enum Flag {
         None = 0,
         DEFINE_FLAG(InWorklist)
         DEFINE_FLAG(EmittedAtUses)
         DEFINE_FLAG(LoopInvariant)
         DEFINE_FLAG(Commutative)
         DEFINE_FLAG(Movable)
         DEFINE_FLAG(Lowered)
         DEFINE_FLAG(Guard)
         Total
     };
接着，对每个参数都扩展DEFINE_FLAG宏，这样我们就得到了enum如下：

enum Flag {
         None = 0,
         InWorklist,
         EmittedAtUses,
         LoopInvariant,
         Commutative,
         Movable,
         Lowered,
         Guard,
         Total
     };
*/
//接着，我们可能要定义一些访问函数，这样才能更好的使用flag列表：

#define FLAG_ACCESSOR(flag) \
bool is##flag() const {\
     return hasFlags(1 << flag);\
}\
void set##flag() {\
     JS_ASSERT(!hasFlags(1 << flag));\
     setFlags(1 << flag);\
}\
void setNot##flag() {\
     JS_ASSERT(hasFlags(1 << flag));\
     removeFlags(1 << flag);\
}
 
FLAG_LIST(FLAG_ACCESSOR)
#undef FLAG_ACCESSOR
