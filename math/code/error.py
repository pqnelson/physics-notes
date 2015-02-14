#!/usr/bin/env python

p = 8.0
Nerror = 44
Nothers = 435-Nerror
N = 435

print "If we guess correctly 90% of the time, the error gives us:"

print "The senate would have error ", 0.01*((10*(.9**p) + 90*(.1**p)))**(1.0/p)
print "The house would have error ", (1.0/N)*((Nerror*(.9**p) + Nothers*(.1**p)))**(1.0/p)

print "If we guess correctly 80% of the time, the error gives us:"
print "The senate would have error ", 0.01*((20*(.8**p) + 80*(.2**p)))**(1.0/p)

Nothers = Nothers-Nerror
Nerror = Nerror*2

print "The house would have error ", (1.0/N)*((Nerror*(.8**p) +
                                       Nothers*(.2**p)))**(1.0/p)

print "If we guess correctly 70% of the time, the error gives us:"
print "The senate would have error ", 0.01*((30*(.7**p) + 70*(.3**p)))**(1.0/p)

Nerror = 132
Nothers = N-Nerror

print "The house would have error ", (1.0/N)*((Nerror*(.7**p) +
                                       Nothers*(.3**p)))**(1.0/p)

