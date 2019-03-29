cmake_minimum_required(VERSION 3.12)
project(Prim C)

set(CMAKE_C_STANDARD 11)

add_executable(Prim main.c prim.c binheap.c binheap.h graph.h errcodes.h graph.c)