#include <stdint.h>
extern void __wrap_memcpy(void *dest, const void *src, size_t len)

__attribute__((always_inline))static inline void memcpy(void *dest, const void *src, size_t len)
{
    __wrap_memcpy(dest, src, len);
}