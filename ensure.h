#pragma once

#ifndef PRIM_ENSURE_H
#define PRIM_ENSURE_H


#include <stdio.h>
#include <stdlib.h>

// please note that calling func(data)
// MUST result in all previously
// allocated memory being freed
void ensure(
        int expression,
        char * message,
        void (* func)(void *),
        void * data,
        int exit_code);

#endif
