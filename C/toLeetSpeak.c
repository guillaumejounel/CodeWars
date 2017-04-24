//Your task is to write function toLeetSpeak that converts a
//regular english sentence to Leetspeak

#include <stdio.h>
#include <string.h>

char* toLeetSpeak (char *speak) {
    char *i = speak;
    while(*i != '\0') {
        switch (*i) {
            case 'A' : *i='@'; break;
            case 'B' : *i='8'; break;
            case 'C' : *i='('; break;
            case 'D' : *i='D'; break;
            case 'E' : *i='3'; break;
            case 'F' : *i='F'; break;
            case 'G' : *i='6'; break;
            case 'H' : *i='#'; break;
            case 'I' : *i='!'; break;
            case 'J' : *i='J'; break;
            case 'K' : *i='K'; break;
            case 'L' : *i='1'; break;
            case 'M' : *i='M'; break;
            case 'N' : *i='N'; break;
            case 'O' : *i='0'; break;
            case 'P' : *i='P'; break;
            case 'Q' : *i='Q'; break;
            case 'R' : *i='R'; break;
            case 'S' : *i='$'; break;
            case 'T' : *i='7'; break;
            case 'U' : *i='U'; break;
            case 'V' : *i='V'; break;
            case 'W' : *i='W'; break;
            case 'X' : *i='X'; break;
            case 'Y' : *i='Y'; break;
            case 'Z' : *i='2'; break;
        }
        i++;
    }
    return speak;
}

int main(int argc, char const *argv[]) {
    char test[5] = "TEST";
    printf("%s\n", toLeetSpeak(test));
    return 0;
}
