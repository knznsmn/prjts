/*
    Calculatrice
    Written by knznsmn on January 28, 2024
    
    This program accepts input and perform calculations on them
    based on supplied operators.

*/

#include <stdio.h>

void greetings();
int isdigit(int);
int main() {
    
    char ch;
    greetings();
    ch = getchar();
    printf("%i, %c, %i ", ch, ch, isdigit(ch));
   
    return 0;
}

void greetings() {
    puts("Welcome to Calculatrice!");
}

int isdigit(int c) {
    if (c >= 48 && c <= 57) {
        return 1;
    }
    else
        return 0;
}
