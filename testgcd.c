//Mehrshad - Matin
//301117102
//This program gets two unsigned int from user and calls function gcd and returns the gcd.

#include <stdio.h>
#include <stdlib.h>



unsigned int gcd(unsigned int, unsigned int);

void main() {
	


	unsigned int a;
	unsigned int b;

	unsigned int save;
	
	
	printf("Enter the first argument: ");
	scanf("%u", &a);
	
	printf("Enter the second argument: ");
	scanf("%u", &b);
	

	save = gcd(a,b);


	printf("%u\n",save);



	
}