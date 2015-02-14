from datetime import datetime, timedelta
from math import log

epoch = datetime(1970, 1, 1)

def epoch_seconds(date):
    """Returns the number of seconds from the epoch to date."""
    td = date - epoch
    return td.days * 86400 + td.seconds + (float(td.microseconds) / 1000000)

def score(ups, downs):
    return ups - downs

def hot(ups, downs, date):
    """The hot formula. Should match the equivalent function in postgres."""
    s = score(ups, downs)
    order = log(max(abs(s), 1), 10)
    sign = 1 if s > 0 else -1 if s < 0 else 0
    seconds = epoch_seconds(date) - 1134028003
    return round(order + sign * seconds / 45000, 7)

today = datetime(2012,11,2)

# romney = hot(200,800,today)
# johnson = hot(50,5,today)
# print "Romney's hotness ", romney
# print "Johnson's hotness ", johnson

def confidence(ups, downs):
    return hot(ups, downs, today)

youth = confidence(3,2)
economy = confidence(10,5)
sandy = confidence(20,5)
romneyBad = confidence(30,7)
clinton = confidence(2,0)
binLaden = confidence(3,0)
wow = confidence(10,8)
GOP = confidence(25,8)

print "Youth vote ",(youth/N)
print "Economy ",(economy/N)
print "Sandy ",(sandy/N)
print "Romney's campaign sucked ",(romneyBad/N)
print "Clinton helped ",(clinton/N)
print "Bin Laden dead ",(binLaden/N)
print "War on Women ",(wow/N)
print "GOP is crazy ",(GOP/N)
