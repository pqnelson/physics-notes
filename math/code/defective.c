#include <stdlib.h>
#include <stdio.h>
#include <math.h>

#define E 2.71828182845904523536028747135266249775724709369995L
#define PI 3.14159265358979323846264338327950288L

/* Stirling's approximation */
double factorial(int n)
{
  double x = 1.0L*n;
  return sqrt(2*PI*x)*pow(x/E,x);
}

/* return a*(a+1)*(...)*b */
double prod(int a, int b)
{
  if(a>b) return prod(b,a);
  int k;
  double result;
  result = 1.0;
  for(k=a;k<=b;k++)
    result = result*k;
  return result;
}

int main(int argc, char *argv[])
{
  int D;
  double c, v;
  v = 0.0;
  c = 990.0;
  for(D=19; 33>D; D++)
  {
    v = c * (D*(D-1)*0.5) * prod(902-D+1,900)/prod(1000-D+1,1000);
    printf("D=%d, Pr(X=2) = %f\n",D,v);
  }

  return EXIT_SUCCESS;
}
