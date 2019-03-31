#include "graph.h"


int MakeMST(
        Graph * graph)
{
    if (graph == NULL)
        return 0;

    short v = 0;

    Heap * vertices_queue = NULL;

    if (graph->vertices && graph->edges)
    {
        vertices_queue = BuildHeap(graph->vertices_array, graph->distance, graph->indices, graph->vertices);

        if (vertices_queue == NULL)
            return ALLOC_ERROR;

        v = ExtractMin(vertices_queue);

        while (vertices_queue->heap_size > 0)
        {
            for (short u = 0; u < graph->vertices; u++)
            {
                if (graph->adjacency_matrix[v * graph->vertices + u] != UINT_MAX
                    && vertices_queue->index[u] < vertices_queue->heap_size
                    && graph->adjacency_matrix[v * graph->vertices + u] < graph->distance[u])
                {
                    DecreaseKey(vertices_queue, u, graph->adjacency_matrix[v * graph->vertices + u]);
                    graph->parent[u] = v;
                }
            }
            v = ExtractMin(vertices_queue);

            if (graph->parent[v] != -1) {
                graph->MST[graph->mst_size].src = graph->parent[v];
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
