#include <stdio.h>
#include <stdlib.h>

#define ASIZE 4

int preSo(char *x, int m, unsigned int S[]) {
    unsigned int j, lim;
    int i;
   // printf("%d,\n", 0);
    for (i = 0; i < ASIZE; ++i)
      S[i] = ~0;
    for (lim = i = 0, j = 1; i < m; ++i, j <<= 1) {
      S[x[i]] &= ~j;
      lim |= j;
    }
    lim = ~(lim>>1);
    printf("%d,\n", lim);
    return(lim);
}

/*void SO(char *x, int m, char *y, int n) {
    unsigned int lim, state;
    unsigned int S[ASIZE];
    int j;
    if (m > WORD)
      error("SO: Use pattern size <= word size");

     Preprocessing
    lim = preSo(x, m, S);

     Searching
    for (state = ~0, j = 0; j < n; ++j) {
      state = (state<<1) | S[y[j]];
      if (state < lim)
        OUTPUT(j - m + 1);
    }
  }*/

int main(void)
{
	char *x={'G','C','A','G'};
	int m=4;
	unsigned int a=4;
	printf("%d\n", ((a<<1)+1)&6);
	unsigned int S[4];
	printf("%d, \n", preSo(x, m, S));

}
