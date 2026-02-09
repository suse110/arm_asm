struct thread_base.thread_state
```c
#define _THREAD_DUMMY (BIT(0))      /* Not a real thread */
#define _THREAD_PENDING (BIT(1))    /* Thread is waiting on an object */
#define _THREAD_PRESTART (BIT(2))   /* Thread has not yet started */
#define _THREAD_DEAD (BIT(3))       /* Thread has terminated */
#define _THREAD_SUSPENDED (BIT(4))  /* Thread is suspended */
#define _THREAD_ABORTING (BIT(5))   /* Thread is in the process of aborting */
#define _THREAD_SUSPENDING (BIT(6)) /* Thread is in the process of suspending */
#define _THREAD_QUEUED (BIT(7))     /* Thread is present in the ready queue */
```