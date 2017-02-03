//Mehrshad - Matin
//301117102
//This program gets 4 value from the user and returns the normalized format.

#include <stdio.h>

void rmpy(unsigned*, unsigned*, unsigned*);


void main(){
	

	char again[1]= "n";
	unsigned r1[2], r2[2], r3[2];

	unsigned int get;

do {
	printf("Enter 1st rational number: ");

	//Input is formatted as a ratio: <integer>/<integer>
	scanf("%u / %u", &r1[0], &r1[1]);

	//r1[0] = 10;
	//r1[1nex] = 20;



	printf("Enter 2nd rational number: ");
	scanf("%u / %u", &r2[0], &r2[1]);



	//r3 = r1 * r2, where r1,r2,r3 are pairs of integers

	rmpy(r1,r2, r3);

	//Output is formatted as a ratio: <integer>  / <integer>

	printf ("prod = %u / %u \n", r3[0], r3[1]);

	

	//Request another pair of rational numbers...


	printf("Continue(y/n)?.....");
	scanf("%s", &again[0]);
	} while (again[0] != 'n');

}