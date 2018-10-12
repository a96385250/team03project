from django.shortcuts import render
from django.http import HttpResponse
import requests
from bs4 import BeautifulSoup
import re
import json
import time

# Create your views here.
def check(request):
    
    return render(request,'home/check.html')

def home(request):
    return render(request,'home/home.html')

def game(request):
    time.sleep(2)
    url="https://www.msn.com/zh-tw/sports/cpbl"
    headers={
    "user-agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36"
    }
    gamedatas=requests.get(url,headers=headers)
    gamedata=BeautifulSoup(gamedatas.text,"lxml")

    games = gamedata.select("div.baseball_cpbl > div.scores")
    game = games[0].select("a") 

    datas=[]
    for gamesfive in game[0:5]:
        gamefive=gamesfive.find_all("span")
        team1=re.search(r'(?P<data>\w.+)',gamefive[0].get_text())
        date=re.search(r'(?P<data>\w.+)',gamefive[1].get_text())
        gamefinal=re.search(r'(?P<data1>\d)\s-\s(?P<data2>\d)',gamefive[2].get_text())
        team2=re.search(r'(?P<data>\w.+)',gamefive[4].get_text())

        gamefinal1=gamefinal.group("data1")
        gamefinal2=gamefinal.group("data2")
     
        if gamefinal1 < gamefinal2:
            teamwin=team2.group("data")
            if teamwin == "統一":
                teamwinname="/static/images/111.png"
            elif teamwin == "桃猿":
                teamwinname="/static/images/222.png"
            elif teamwin == "富邦":
                teamwinname="/static/images/333.png"
            elif teamwin == "兄弟":
                teamwinname="/static/images/444.png"
        else:
            teamwin=team1.group("data")
            if teamwin == "統一":
                teamwinname="/static/images/111.png"
            elif teamwin == "桃猿":
                teamwinname="/static/images/222.png"
            elif teamwin == "富邦":
                teamwinname="/static/images/333.png"
            elif teamwin == "兄弟":
                teamwinname="/static/images/444.png"



        if team1.group("data") =="統一":
            team1name="/static/images/111.png"
        elif team1.group("data")=="桃猿":
            team1name="/static/images/222.png"
        elif team1.group("data")=="富邦":
            team1name="/static/images/333.png"
        elif team1.group("data")=="兄弟":
            team1name="/static/images/444.png"

        if team2.group("data") == "統一":
            team2name="/static/images/111.png"    
        elif team2.group("data") == "桃猿":
            team2name="/static/images/222.png"
        elif team2.group("data") == "富邦":
            team2name="/static/images/333.png"
        elif team2.group("data") == "兄弟":
            team2name="/static/images/444.png"   

        data={
        "team1":team1name,
        "team2":team2name,
        "team1game":gamefinal.group("data1"),
        "team2game":gamefinal.group("data2"),
        "date":date.group("data"),
        "teamwinname":teamwinname
        }
        datas.append(data)

    datajson = json.dumps(datas)
    return HttpResponse(datajson)

    # print(datas)
    # return render(request,'home/home.html')