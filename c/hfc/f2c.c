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