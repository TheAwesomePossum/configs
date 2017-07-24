import os
from helpers import parseFloat, minutesAndSeconds

string_dur = os.popen("banshee --query-duration").read()

float_dur = parseFloat(string_dur)

print (minutesAndSeconds(float_dur))
