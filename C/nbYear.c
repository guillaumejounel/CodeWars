//Determine how many years are necessary to reach p inhabitants in a town of
//p0 inhabitants, increasing each year by p(y)+p(y)*percent+aug

#include <stdio.h>

int nbYear(int p0, double percent, int aug, int p) {
    int nb = 0;
    while(p0<p) {
        p0+=p0*(percent/100)+aug;
        nb++;
    }
    return nb;
}

int main(int argc, char const *argv[]) {
    printf("nb : %d", nbYear(1500000, 2.5, 10000, 2000000));
    return 0;
}
