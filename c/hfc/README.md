# HEAD FIRST C
Taken notes while following this book.

## Getting started with c

To create a C program, you need to write your code into a _C source file_.

### What does a complete C program look like?

```c
/*
 *	Program to convert fahrenheit to Celsius.
 *	(C)2024, Knznsmn. 
 */

#include <stdio.h>

int main() {
	
	int fahrenheit = 0;
	
	printf("Enter the temperature in degrees Fahrenheit: ");
	scanf("%d", &fahrenheit);

	float celsius = (fahrenheit - 32) * ((float)5/9);
	printf("%dF is %.2f degrees Celsius.\n", fahrenheit, celsius);

	return 0;

}
```

- The `main()` function has and should always be the **return type** of `int`. 
- THe body of the function is always surrounded by `{ }` braces.

### How do you run the program?

C is a compiled language. To compile the code, you need a program called a **compiler**, which one of the most popular is the GNU Compiler Collection or `gcc`.

```bash
cc f2c.c -o f2c && ./f2c
```
The command above compiles the code, name the executable program produced as `f2c`, and run the program (if it compiled successfully).