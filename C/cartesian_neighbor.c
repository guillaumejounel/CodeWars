#include <stdio.h>
#include <stdlib.h>
//cartesian_neighbor(2,2) -> {{1,1},{1,2},{1,3},{2,1},{2,3},{3,1},{3,2},{3,3}}

int ** cartesian_neighbor(int x, int y){
    int** neighbor = malloc(8*2*sizeof(int)), i;
    for (i=0; i<8; i++) {
        neighbor[i] = malloc(2*sizeof(int));
        if (i<2) {
            neighbor[i][0] = x - (i+1)%2;
            neighbor[i][1] = y - i%2;
        } else if (i<4) {
            neighbor[i][0] = x + (i+1)%2;
            neighbor[i][1] = y + i%2;
        } else if (i<6) {
            neighbor[i][0] = x + (i%2?1:-1);
            neighbor[i][1] = y + (i%2?1:-1);
        } else {
            neighbor[i][0] = x - (i%2?1:-1);
            neighbor[i][1] = y + (i%2?1:-1);
        }
    }
    return neighbor;
}

void afficher(int** neighbor) {
    int i;
    for (i=0; i<8; i++) {
        printf("(%d,%d)\n",neighbor[i][0],neighbor[i][1]);
    }
}

void freeMem(int** neighbor) {
    int i;
    for (i=0; i<8; i++)
        free(neighbor[i]);
    free(neighbor);
}


int main(int argc, char const *argv[]) {
    int** n = cartesian_neighbor(2,2);
    afficher(n);
    freeMem(n);
    return 0;
}
