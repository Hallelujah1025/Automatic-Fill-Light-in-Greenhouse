import urllib.request
import json
import time

def getSunrise():
    ApiUrl= \
            "https://api.seniverse.com/v3/geo/sun.json?key=Spbl6NkSdO6rUkslB&location=hangzhou&language=zh-Hans&start=0&days=1"
    # open weather API
    html=urllib.request.urlopen(ApiUrl)
    data=html.read().decode("utf-8")
    res = json.loads(data)
    loc = res['results']
    date = loc[0]['sun']
    sunrise = date[0]['sunrise']
    sunset = date[0]['sunset']
    sr = int(sunrise[0]) * 1000 + int(sunrise[1]) * 100 + int(sunrise[3]) * 10 + int(sunrise[4])
    return(sr)

def getSunset():
    ApiUrl= \
            "https://api.seniverse.com/v3/geo/sun.json?key=Spbl6NkSdO6rUkslB&location=hangzhou&language=zh-Hans&start=0&days=1"
    # open weather API
    html=urllib.request.urlopen(ApiUrl)
    data=html.read().decode("utf-8")
    res = json.loads(data)
    loc = res['results']
    date = loc[0]['sun']
    sunrise = date[0]['sunrise']
    sunset = date[0]['sunset']
    ss = int(sunset[0]) * 1000 + int(sunset[1]) * 100 + int(sunset[3]) * 10 + int(sunset[4])
    ass = ss + 200
    return(ass)


            
