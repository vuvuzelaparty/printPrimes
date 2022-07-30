#include <stdio.h>
#include <math.h>

int main(void) {
	int lower, upper;
	printf("Lower bound: ");
	scanf("%d",&lower);
	printf("Upper bound: ");
	scanf("%d",&upper);
	if (lower > upper || lower < 0 || upper < 0) {
		printf("Please enter a valid range\n");
		return 1;
	}
	for (int i, isPrime, bound; lower <= upper; lower++) {
		isPrime = 1;
		bound = sqrt(lower); // don't need to test values greater than square root
		for(i = 2; i <= bound && isPrime; i++)
			isPrime = lower % i != 0;
		if(isPrime && !(lower == 0 || lower == 1))
			printf("%d\n",lower);
	}
	return 0;
}
