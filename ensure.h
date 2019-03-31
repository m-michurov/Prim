#pragma once

#ifndef PRIM_ENSURE_H
#define PRIM_ENSURE_H


#include <stdio.h>
#include <stdlib.h>

// please note that calling func(data)
// MUST result in all previously
// allocated memory being freed
extern inline void ensure(
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

#endif
