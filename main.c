#include <stdio.h>

#include "graph.h"


int main(
        void)
{
    int src = 0;
    int dst = 0;
    int length = 0;
    int edges = 0;
    int vertices = 0;

    Graph * graph = NULL;

    if (scanf("%d", &vertices) == EOF) {
        puts("bad number of lines");
        return SUCCESS;
    }
    if (scanf("%d", &edges) == EOF) {
        puts("bad number of lines");
        return SUCCESS;
    }

    if (!(vertices >= 0 && vertices <= 5000)) {
        puts("bad number of vertices");
        return SUCCESS;
    }
    if (!(edges >= 0 && edges <= (vertices - 1) * vertices / 2)) {
        puts("bad number of edges");
        return SUCCESS;
    }

    graph = InitGraph((unsigned int) vertices, (unsigned int) edges);

    if (graph == NULL) {
        puts("memory allocation error");
        return ALLOC_ERROR;
    }


    for (int k = 0; k < graph->edges; k++) {
        if (scanf("%d %d %d", &src, &dst, &length) == EOF) {
            puts("bad number of lines");
            FreeGraph(graph);
            return SUCCESS;
        }
        if (!(src > 0 && src < graph->vertices + 1) || !(dst > 0 && dst < graph->vertices + 1)) {
            puts("bad vertex");
            FreeGraph(graph);
            return SUCCESS;
        }
        if (!(length >= 0 && length <= INT_MAX)) {
            puts("bad length");
            FreeGraph(graph);
            return SUCCESS;
        }

        src--;
        dst--;

        graph->adjacency_matrix[src * graph->vertices + dst] = (unsigned int) length;
        graph->adjacency_matrix[dst * graph->vertices + src] = (unsigned int) length;
    }


    if (MakeMST(graph) == SUCCESS) {
        for (int k = 0; k < graph->mst_size; k++)
            printf("%d %d\n", graph->MST[k].src + 1, graph->MST[k].dst + 1);
    } else {
        puts("no spanning tree");
    }

    FreeGraph(graph);

    return SUCCESS;
}