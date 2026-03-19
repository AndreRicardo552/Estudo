

#ifndef VECTOR_H
#define VECTOR_H

#include <stdlib.h>

typedef struct{
    void *data;
    size_t size;
    size_t load;
    size_t element_size;
} Vector;

Vector* Create(size_t element_size);
void push(Vector v, void *element);
void* get(Vector v, size_t index);
void free(Vector v);



#endif