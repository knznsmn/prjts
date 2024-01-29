/* FairShare v.0.2
 * Written by knznsmn on February 28, 2024
 * This program fairly divides stuff between two people.
 */

#include <stdio.h>
#include <stdlib.h>

void clean();
void pause();
void swap(int *x, int *y);
char pluralize(char s[]);

int main() {
    clean();

    int user;
    char item[20];
    int qty = 0;
    
    printf("This program helps you divide your stuff.\n");
    printf("\n");
    pause();
    printf("What do we have today? ");
    scanf("%s", item);
    printf("\nNice. How many? ");
    scanf("%d", &qty);
    if (qty <= 0) {
        do {
            printf("How many again? ");
            scanf("%d", &qty);
        }
        while (qty <= 0);
    }
    clean();

    /* Grammar-checking logic*/
    if (qty > 1) {
        pluralize(item);
        printf("\nSo there are %d %s.\n", qty, item);
        if (qty == 2) {
            printf("This is easy. Take one for you.\n");
            printf("And this one is for me.\n");
        }
        else {
            printf("\nLet's divide it between the two of us.\n");
            printf("Enter how many should be yours: ");
            scanf("%d", &user);

            // If the user wants more than what's available
            if (user >= qty) {
                do {
                    printf("Please be fair.\n");
                    printf("Enter how many should be yours: ");
                    scanf("%d", &user);
                }
                while (user >= qty);
            }
            // The user (finally) played fair
            if (user == 1) {
                printf("\nWow! How nice. Thank you.\n");
                printf("Take this one for you.\n");
                printf("I'll take these %d %s for me.\n", qty, item);
                printf("\nAu revoir !\n");
            }
            else {
                printf("\n%d, nice. That's cool.\n", user);

                // Starts swapping values
                int mine = qty - user;
                if (user > mine) {
                    swap(&user, &mine);
                }
                printf("%d %s for you, %d %s for me.\n", user, item, mine, item);
            }
        }
    }
    // The user inputs 1
    else {
        printf("\nSo there is only %d %s.\n", qty, item);
        printf("This could be yours, but it's mine now.\n");
        printf("Thank you and have a nice day.\n");
    }
    pause();
    clean();

    return 0;
}

void clean() {
    system("clear");
    return;
}

void pause() {
    system("echo '...' && read line");
    return;
}

void swap(int *x, int *y) {
    int tmp = *x;
    *x = *y;
    *y = tmp;
}

char pluralize(char s[]) {
    // Count the string length
    int i = 0;
    while (s[i] != '\0') {
        i++;
    }
    // If the word ends with 'y'
    if (s[i-1] == 'y') {
        s[i-1]  = 'i';
        s[i]    = 'e';
        s[i+1]  = 's';
        s[i+2]  = '\0';
    }

    else if (s[i-1] != 's') {
        s[i]  = 's';
        s[i+1]  = '\0';
    } 

    return *s;
}