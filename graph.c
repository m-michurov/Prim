#include "graph.h"


void FreeGraph(
        void * graph)
{
    if (graph == NULL)
        return;

    free(((Graph *)graph)->distance);
    free(((Graph *)graph)->indices);
    free(((Graph *)graph)->parent);
    free(((Graph *)graph)->vertices_array);
    free(((Graph *)graph)->adjacency_matrix);
    free(((Graph *)graph)->MST);

    free(graph);
}


Graph * InitGraph(
        unsigned int vertices,
        unsigned int edges)
{
    Graph * graph = (Graph *) malloc(sizeof(Graph));

    if (graph == NULL)
        return NULL;

    graph->distance = malloc(vertices * sizeof(unsigned int));
    graph->indices = malloc(vertices * sizeof(unsigned int));
    graph->parent = malloc(vertices * sizeof(short));
    graph->vertices_array = malloc(vertices * sizeof(short));
    graph->adjacency_matrix = (unsigned int *) malloc(vertices * vertices * sizeof(int));
    graph->MST = calloc(vertices > 0 ? vertices - 1 : 0, sizeof(Edge));

    if ((graph->distance == NULL || graph->indices == NULL || graph->parent == NULL ||
        graph->vertices_array == NULL || graph->adjacency_matrix == NULL || graph->MST == NULL) && vertices)
    {
        FreeGraph(graph);
        free(graph);
        return NULL;
    }

    memset(graph->adjacency_matrix, 0xFF, (size_t) vertices * (size_t) vertices * sizeof(unsigned int));
    memset(graph->parent, 0xFF, (size_t) vertices * sizeof(short));
    memset(graph->distance, 0xFF, (size_t) vertices * sizeof(unsigned int));


    graph->distance[0] = 0;
    graph->vertices = vertices;
    graph->edges = edges;
    graph->mst_size = 0;

    for (short k = 0; k < vertices; k++) {
        graph->vertices_array[k] = k;
    }

    for (unsigned int k = 0; k < vertices; k++) {
        graph->indices[k] = k;
    }

    return graph;
}
