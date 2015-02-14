#include <time.h>
#include <stdlib.h>
#include <stdio.h>

int main(void)
{
  int n;

  // warm up the random number generator
  srand(time(NULL));
  for(n = 0; n < 100; n++) rand(); 

  // flip the coin
  n = 0;
  while (rand() % 2 == 0) printf("Head number %d\n",++n);

  printf("There were %d heads.\n", n);

  return 0;
}
