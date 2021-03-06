#pragma once

#ifndef PRIM_GRAPH_H
#define PRIM_GRAPH_H

#include <stdlib.h>
#include <string.h>


#include "binheap.h"
#include "errcodes.h"


#ifndef offset
#define offset(vertex) ((1 + (vertex)) * (vertex) / 2)
#endif


#define NO_PARENT   -1


typedef struct {
    unsigned short src;
    unsigned short dst;

    unsigned int length;
} Edge;


typedef struct {
    unsigned int * adjacency_matrix;
    unsigned int * distance;
    unsigned int * indices;

    unsigned short * vertices_array;
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
