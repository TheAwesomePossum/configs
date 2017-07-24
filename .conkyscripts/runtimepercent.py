import os
from helpers import parseFloat

time = os.popen("banshee --query-duration").read()

currentpos = os.popen("banshee --query-position").read()

percent = (parseFloat(currentpos)/parseFloat(time))*100

print (percent)

