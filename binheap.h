#pragma once

#ifndef BINHEAP_BINHEAP_H
#define BINHEAP_BINHEAP_H

#include <stdlib.h>

typedef struct {
    short * array; // values are expected to be in range [0, heap_size - 1]

    unsigned int * index;
    unsigned int * key;

    size_t heap_size;
    size_t max_heap_size;
} Heap;


Heap * BuildHeap(
        short * array,
        unsigned int * key,
        unsigned int * index,
        size_t size);


short ExtractMin(
        Heap * heap);


int DecreaseKey(
        Heap * heap,
        short element_value,
        unsigned int key);

#endif


