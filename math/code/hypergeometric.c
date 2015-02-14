1192725059258223539848800000.
#include <stdlib.h>
#include <stdio.h>
#include <math.h>

/* return a*(a+1)*(...)*b */
long double prod(int a, int b)
{
  if(a>b) return prod(b,a);
  int k;
  long double result;
  result = 1.0;
  for(k=a;k<=b;k++)
    result = result*k;
  return result;
}

int main(int argc, char *argv[])
{
  int N;
  long double c, v;
  v = 0.0;
  c = 1192725059258223539848800000.0L;
  for(N=1242; 1260>N; N++)
  {
    v = c * prod(N-200,N-241)/prod(N-49,N);
    printf("N=%d, h(N,50,200,8) = %Lf\n",N,v);
  }

  return EXIT_SUCCESS;
}
