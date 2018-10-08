from django.shortcuts import render
from django.http import HttpResponse
from django.core import serializers
from .models import Players,Teams
from .webmodels import webdatas
import requests
from bs4 import BeautifulSoup
import re
import json
import time


# Create your views here.
webdata=webdatas()

def player(request) :
    # players = Players.objects.all()
    strJS = "<script>location.href='/edit/aien0313crte/'</script>"
    return HttpResponse(strJS)

def catch(request):
    teamslist = ["A02","L01","B04","E02"]
    time.sleep(2)
    for teamlist in teamslist:

        url="http://www.cpbl.com.tw/web/team_player.php"
    
        url_params={
            "team":teamlist
        }
        headers={
        "user-agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36"
        }

        teams =requests.get(url,params=url_params,headers=headers)
        team=BeautifulSoup(teams.text,"lxml")

        playerslist = team.select("table.std_tb tr")
        del(playerslist[0])
        print(playerslist) 




    # del(playerlist[0])
    # avg=0.00
    # era=0.00
    # h=0
    # hr=0
    # w=0
    # sv=0
    # rbi=0
    # sb=0
    # so=0
    # teamid=0
    # playerslist=webdata.read()
    # print(playerslist)
    # for playerdatas in playerlist:
    #     teamidpatten=re.search(r'/(?P<patten1>\w+)/(?P<patten2>.+=)(?P<teamname>\w)\w+',playerdatas.find("a")["href"])
    #     teamname=teamidpatten.group("teamname")
    #     playername = playerdatas.find("a").get_text().strip()
    #     print(playername)
    #     avg = playerdatas.select("td:nth-of-type(18)")[0].get_text()
    #     ht =  playerdatas.select("td:nth-of-type(8)")[0].get_text()
    #     hr = playerdatas.select("td:nth-of-type(12)")[0].get_text()
    #     sb = playerdatas.select("td:nth-of-type(15)")[0].get_text()
    #     a ="廖建富"
    #     c =(("a"),("廖建富",),("d"))
    #     print(type(("a")))
    #     print(type(("a",)))
    #     if a in c:
    #         print("123")
    #     if playername in playerslist:
    #         print("ok")

    #     if teamname == "A":
    #         teamid = 1
    #     elif teamname == "L":
    #         teamid = 2
    #     elif teamname == "B":
    #         teamid = 3
    #     elif teamname == "E":
    #         teamid =4

   
        # webdatas=(playername,teamid,avg,h,hr,era,w,sv,rbi,sb,so)
        # webdata.create(webdatas)
        # data={
        #     "playername":playername,
        #     "avg":avg,
        #     "h":h,
        #     "hr":hr,
        #     "era": "0.00",
        #     "w":0,
        #     "sv": 0,
        #     "rbi": 0,
        #     "sb": sb,
        #     "so": 0,
        #     "teamid": teamid          
        # }
        # datas.append(data)
    # del(datas[0])
    # datajson = json.dumps(datas)
    # print(datas)
    # print(type(data))
    # print(datajson)
    # print(type(datajson))
    # playjson = serializers.serialize("json",datas)
    # print(playjson)
    # return HttpResponse(playjson,content_type="application/json")
        # print(playerdatas.find_all("td"))
        # for playertd in playerdatas.find_all("td"):
        #     print(playerdatas.find('td').get_text())

        # a = playerdatas.findAll('td')[17:18]
        # for b in a:
        #     print(b.string)
        
        # print(playerdatas.findAll('td')[17:18])
        # print(playerdatas.findAll('td')[7:8])
        
    # return render(request,'player/catch.html')
    return render(request,'player/restapi.html') 
def restapi(request):
    return render(request,'player/restapi.html') 

