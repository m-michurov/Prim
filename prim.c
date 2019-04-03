#include "graph.h"
#include <stdio.h>


#define offset(vertex) ((1 + (vertex)) * (vertex) / 2)


int MakeMST(
        Graph * graph)
{
    if (graph == NULL)
	    return -1;

    unsigned short v = 0;

    Heap * vertices_queue = NULL;

    if (graph->vertices && graph->edges)
    {
        vertices_queue = BuildHeap(graph->vertices_array, graph->distance, graph->indices, graph->vertices);

        if (vertices_queue == NULL)
			return ALLOC_ERROR;

        v = (unsigned short) ExtractMin(vertices_queue);

        while (vertices_queue->heap_size > 0)
        {
            for (unsigned short u = 0; u < graph->vertices; u++)
            {
                if (graph->adjacency_matrix[offset(u > v ? u : v) + (u > v ? v : u)] != UINT_MAX
                    && vertices_queue->index[u] < vertices_queue->heap_size
                    && graph->adjacency_matrix[offset(u > v ? u : v) + (u > v ? v : u)] < graph->distance[u])
                {
                    DecreaseKey(vertices_queue, u, graph->adjacency_matrix[offset(u > v ? u : v) + (u > v ? v : u)]);
                    graph->parent[u] = (short) v;
                    //printf("assigned graph->parent[%d] = %d\n", u + 1, graph->parent[u] + 1);
                }
            }
            v = (unsigned short) ExtractMin(vertices_queue);

            //int a = graph->parent[v];
            //printf("graph->parent[%d] = %d\n", v + 1, graph->parent[v] + 1);

            if (graph->parent[v] != NO_PARENT) {
                graph->MST[graph->mst_size].src = (unsigned short) graph->parent[v];
                graph->MST[graph->mst_size].dst = v;
                graph->mst_size++;
            }
        }
    }

    free(vertices_queue);

    if (graph->mst_size != graph->vertices - 1 || !graph->vertices) {
        return MST_ERROR;
    }

    return SUCCESS;
}
