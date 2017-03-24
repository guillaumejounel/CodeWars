//Write a method, that replaces every nth char oldValue with char newValue
//If n is 0 or negative or if it is larger than the count of the oldValue, return the original text without a change. 
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

char* replaceNth(char* text, int n, char oldValue, char newValue);

int main(int argc, char const *argv[]) {
    char vader[34] = "Vader said: No, I am your father!", nvader[34];
    printf("Before : %s\n", vader);
    strcpy(nvader, replaceNth(vader, 2,'a','o'));
    printf("After : %s\n", nvader);
    return 0;
}

char* replaceNth( char* text, int n, char oldValue, char newValue)
{
    char* p = malloc(strlen(text)*sizeof(char));
    int i, nb=0;
    if (n<=0)
        return text;
    for (i=0; i<strlen(text); i++) {
        if (text[i] == oldValue && (((nb+=1)%n)==0)) {
            p[i] = newValue;
        } else {
            p[i] = text[i];
        }
    }
    if (n>nb)
        return text;
    p[i] = '\0';
    return p;
}
