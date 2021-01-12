#ifndef __MACROS_H__
#define __MACROS_H__

// dummy def
#define INCLUDE_ASM(DECL, ...)

#define ARRAY_SIZE(o) (sizeof((o)) / sizeof(*(o)))

// Align X to the previous N bytes (N must be power of two)
#define ALIGN_PREV(X, N) ((X) & ~((N)-1))
// Align X to the next N bytes (N must be power of two)
#define ALIGN_NEXT(X, N) ALIGN_PREV(((X) + (N)-1), N)

#define JUT_ASSERT(...)
#define ASSERT(...)
#define LOGF(FMT, ...)

#endif