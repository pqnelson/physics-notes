from math import sqrt

def _confidence(ups, downs, z = 1.0):
    n = ups + downs

    if n == 0:
        return 0

    phat = float(ups) / n
    return (phat+z*z/(2*n)-z*sqrt((phat*(1-phat)+z*z/(4*n))/n))/(1+z*z/n)

def foobar(z=1.0):
    n = 6
    phat = 10.0/12.0
    return (phat+z*z/(2*n)-z*sqrt((phat*(1-phat)+z*z/(4*n))/n))/(1+z*z/n)


# z=0.77 for 75%
# z=0.53 for 50%
def confidence(ups, downs, z = 4.5):
    if ups + downs == 0:
        return 0
    else:
        return _confidence(ups, downs, z)

print "Confidence = ", confidence(60, 40, 2.0)
print "Confidence = ", confidence(55, 25, 2.0)

