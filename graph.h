#pragma once

#ifndef PRIM_GRAPH_H
#define PRIM_GRAPH_H

#include <stdlib.h>
#include <string.h>


#include "binheap.h"
#include "errcodes.h"
#include "ensure.h"


typedef struct {
    short src;
    short dst;

    unsigned int length;
} Edge;


typedef struct {
    unsigned int * adjacency_matrix;
    unsigned int * distance;
    unsigned int * indices;

    short * vertices_array;
    short * parent;

    Edge * MST;

    unsigned int vertices;
    unsigned int edges;

    size_t mst_size;
} Graph;


void FreeGraph(
        void * graph);


Graph * InitGraph(
        unsigned int vertices,
        unsigned int edges);


int MakeMST(
        Graph * graph);


#endif
