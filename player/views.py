from django.shortcuts import render
from django.http import HttpResponse
from django.core import serializers
from .models import Players,Teams
from .webmodels import playersdb
import requests
from bs4 import BeautifulSoup
import re
import json
import time


# Create your views here.
playersdbdata=playersdb()

def player(request) :
    # players = Players.objects.all()
    strJS = "<script>location.href='/edit/aien0313crte/'</script>"
    return HttpResponse(strJS)

def catch(request):
    playersdbdata.delete()
    teamslist = ["A02","L01","B04","E02"]
    time.sleep(2)
    for teamlist in teamslist:

        url="http://www.cpbl.com.tw/web/team_playergrade.php"
        url2="http://www.cpbl.com.tw/web/team_playergrade.php?&grade=2"
    
        url_params={
            "team":teamlist
        }
        headers={
        "user-agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36"
        }

        teams =requests.get(url,params=url_params,headers=headers)
        teamsp =requests.get(url2,params=url_params,headers=headers)
        team=BeautifulSoup(teams.text,"lxml")
        teamp=BeautifulSoup(teamsp.text,"lxml")

        playerslist = team.select("table.std_tb tr")
        playersplist = teamp.select("table.std_tb > tr")
        del(playerslist[0])
        # del(playersplist[0])
        teamid=1
        ab=0
        ip=0.0
        avg=0.00
        era=0.00
        h=0
        hr=0
        w=0
        sv=0
        rbi=0
        sb=0
        so=0
        hld=0
        for playerdatas in playerslist:
            teamidpatten=re.search(r'/(?P<patten1>\w+)/(?P<patten2>.+=)(?P<teamname>\w)\w+',playerdatas.find("a")["href"])
            teamname=teamidpatten.group("teamname")
            playername = playerdatas.find("a").get_text().strip()
            print(playername)
            ab =  playerdatas.select("td:nth-of-type(5)")[0].get_text()
            avg = playerdatas.select("td:nth-of-type(18)")[0].get_text()
            ht =  playerdatas.select("td:nth-of-type(8)")[0].get_text()
            hr = playerdatas.select("td:nth-of-type(12)")[0].get_text()
            sb = playerdatas.select("td:nth-of-type(14)")[0].get_text()
            rbi =  playerdatas.select("td:nth-of-type(6)")[0].get_text()
            playerdb=(playername,teamid,avg,h,hr,era,w,sv,rbi,sb,so,hld,ab,ip)
            playersdbdata.create(playerdb)

            if teamname == "A":
                teamid = 1
            elif teamname == "L":
                teamid = 2
            elif teamname == "B":
                teamid = 3
            elif teamname == "E":
                teamid =4 
              
            print(ab)  
            print(avg)
            print(ht)
            print(hr)
            print(sb)
            print(teamid)

        for playerpdatas in playersplist:
            teamidpatten=re.search(r'/(?P<patten1>\w+)/(?P<patten2>.+=)(?P<teamname>\w)\w+',playerpdatas.find("a")["href"])
            teamname=teamidpatten.group("teamname")
            playername = playerpdatas.find("a").get_text().strip()
            print(playername)
            ip = playerpdatas.select("td:nth-of-type(14)")[0].get_text()
            era = playerpdatas.select("td:nth-of-type(16)")[0].get_text()
            w =  playerpdatas.select("td:nth-of-type(9)")[0].get_text()
            sv = playerpdatas.select("td:nth-of-type(11)")[0].get_text()
            so = playerpdatas.select("td:nth-of-type(24)")[0].get_text()
            hld = playerpdatas.select("td:nth-of-type(13)")[0].get_text()
            playerdb=(playername,teamid,avg,h,hr,era,w,sv,rbi,sb,so,hld,ab,ip)
            playersdbdata.create(playerdb)

            if teamname == "A":
                teamid = 1
            elif teamname == "L":
                teamid = 2
            elif teamname == "B":
                teamid = 3
            elif teamname == "E":
                teamid =4

            print(ip)
            print(era)
            print(w)
            print(sv)
            print(so)
            print(hld)
            print(teamid)
    return render(request,'player/catch.html') 

def ranking(request):
    return render(request,'player/ranking.html') 

def rankingdata(request):
    avgdatas=[]
    playersavg=playersdbdata.read()
    for playeravg in playersavg:
        avgdata={
            "playerteamid":playeravg[0],
            "playername":playeravg[1],
            "playeravg":float(playeravg[2])
        }
        avgdatas.append(avgdata)

    avgdatajson = json.dumps(avgdatas)
    return HttpResponse(avgdatajson)

    
def restapi(request):
    return render(request,'player/restapi.html') 

