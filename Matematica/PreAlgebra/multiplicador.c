
#include <stdio.h>
#include <stdlib.h>
#include "multiplicador.h"

void multiplicador(multiplos* m){

    if(m->n <= 0){
        printf("Valor não pode ser menor ou igual a 0!\n");
        return;
    }

    m->multiplos = (int*)calloc(m->size, sizeof(int));
    if(m->multiplos == NULL){
        printf("[ERROR] Não foi possivel alocar memoria!\n");
        return;
    }

    m->multiplos[0] = m->n;


    for(int i = 1; i <= m->size - 1; i++){
        m->multiplos[i] = m->multiplos[i - 1] + m->n;
    }
}