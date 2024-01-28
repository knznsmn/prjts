/* FairShare v.0.1
 * Written by knznsmn on February 28, 2024
 * This program fairly divides stuff between two people.
 */

#include <stdio.h>

void swap(int *x, int *y);

int main() {

    int user;
    char item[20];
    int qty = 0;
    printf("What do we have today? ");
    scanf("%s", item);
    printf("\nNice. How many? ");
    scanf("%d", &qty);
    printf("\nSo there are %d %ss.\n", qty, item);
    printf("\nLet's divide it between the two of us.\n");
   
    printf("Enter how many should be yours: ");
    scanf("%d", &user);

    /* If user wants more than what's available */ 
    if (user >= qty) {
        do {
            printf("Please be fair.\n");
            printf("Enter how many should be yours: ");
            scanf("%d", &user);
        }
        while (user >= qty);
    }

    printf("\n%d, nice. That's cool.\n", user);

    int mine = qty - user;
    if (user > mine) {
        swap(&user, &mine);
    }
    printf("%d %ss for you, %d %ss for me.\n", user, item, mine, item);

    return 0;
}

void swap(int *x, int *y) {
    int tmp = *x;
    *x = *y;
    *y = tmp;
}
