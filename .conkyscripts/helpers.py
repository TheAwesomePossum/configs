import math

def parseFloat(time):
    number = ""
    for char in time:
        if char.isdigit() or char is '.':
            number += char
    return float(number)

def minutesAndSeconds(seconds):
    minutes = math.floor(seconds/60)
    remaining = math.floor(seconds - minutes*60)
    if remaining < 10:
        return "" + str(minutes) + ":0" + str(remaining)
    return "" + str(minutes) + ":" + str(remaining)
