#include <stdio.h>

//As sheep are not coming in one flock, you will be given two arrays (one for each night)
//representing number of sheep as they were returning to the yard during the evening
//(entries are positive ints, higher than zero).
//Farmer and his son know the total amount of their sheep, you will be given this number as third parameter.
//Your goal is to calculate the amount of sheep lost (not returned) to the farm after Saturday night counting.
// friday and saturday are 0-terminated arrays, i.e. the last element (and only that) will be 0.
int lostSheep(const int *friday, const int* saturday, int total)
{
    const int *f=friday, *s=saturday;
    while(*f != 0) { total-=*f; f++; }
    while(*s != 0) { total-=*s; s++; }
    return total;
}

int main(int argc, char const *argv[]) {
    int friday[] = {1, 2, 0}, saturday[] = {3, 4, 0};
    printf ("lost : %d\n", lostSheep(friday, saturday, 15));
    return 0;
}
