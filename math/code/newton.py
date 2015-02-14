from sympy import *

N = symbols('n')

n = [10, 165, 170, 173, 265]
t = [1.4965, 497.1, 544.882, 549.369, 1968.959]
c = [[0,0,0,0], [0,0,0], [0,0], [0]]
for x in xrange(3):
    c[0][x] = (t[x+1] - t[x])/(n[x+1] - n[x])
for x in xrange(2):
    c[1][x] = (c[0][x+1]-c[0][x])/(n[x+2]-n[x])
for x in xrange(1):
    c[2][x] = (c[1][x+1]-c[1][x])/(n[x+3]-n[x])

c[3][0] = (c[2][1]-c[2][0])/(n[4]-n[0])
C = [t[0], c[0][0], c[1][0], c[2][0], c[3][0]]

f = C[0] + C[1]*(N-n[0]) + C[2]*(N-n[0])*(N-n[1]) + C[3]*(N-n[0])*(N-n[1])*(N-n[2])+C[4]*(N-n[0])*(N-n[1])*(N-n[2])*(N-n[3])
print simplify(f)
print "\n\n\nNow\n"
print f.subs(N,435).evalf()
print "\n"
print solve(f,N)

