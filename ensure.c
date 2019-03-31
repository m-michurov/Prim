#include "ensure.h"


inline void ensure(
        int expression,
        char * message,
        void (* func)(void *),
        void * data,
        int exit_code)
{
    if (!expression) {
        if (func != NULL)
            func(data);

        puts(message);
        exit(exit_code);
    }
}