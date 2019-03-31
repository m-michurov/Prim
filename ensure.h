#pragma once

#ifndef PRIM_ENSURE_H
#define PRIM_ENSURE_H


#include "graph.h"


extern inline void ensure(
        int expr,
        char * message,
        void (* func)(Graph *),
        Graph * data,
        int exit_code)
{
    if (!expr) {
        if (func != NULL)
            func(data);

        puts(message);
        exit(exit_code);
    }
}

#endif
