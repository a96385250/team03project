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

        playerslist = team.select("table.std_tb > tr")
        playersplist = teamp.select("table.std_tb > tr")
        # del(playerslist[0])
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
            h =  playerdatas.select("td:nth-of-type(8)")[0].get_text()
            hr = playerdatas.select("td:nth-of-type(12)")[0].get_text()
            sb = playerdatas.select("td:nth-of-type(15)")[0].get_text()
            rbi =  playerdatas.select("td:nth-of-type(6)")[0].get_text()

            if teamname == "A":
                teamid = 1
            elif teamname == "L":
                teamid = 2
            elif teamname == "B":
                teamid = 3
            elif teamname == "E":
                teamid =4 

            playerdb=(playername,teamid,avg,h,hr,era,w,sv,rbi,sb,so,hld,ab,ip)
            playersdbdata.create(playerdb)
              
            print(ab)  
            print(avg)
            print(h)
            print(hr)
            print(sb)
            print(teamid)

        ab=0
        avg=0.00
        h=0
        hr=0
        rbi=0
        sb=0

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

            if teamname == "A":
                teamid = 1
            elif teamname == "L":
                teamid = 2
            elif teamname == "B":
                teamid = 3
            elif teamname == "E":
                teamid = 4

            playerdb=(playername,teamid,avg,h,hr,era,w,sv,rbi,sb,so,hld,ab,ip)
            playersdbdata.create(playerdb)

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

def rankingavg(request):
    datas=[]
    datasql = "SELECT teamid,playername,avg from players where ab >345 ORDER BY avg DESC LIMIT 5"
    playersdata=playersdbdata.read(datasql)
    for playerdata in  playersdata:
        if playerdata[0] == 1:
            playerteam = "Lamigo"
        elif playerdata[0] == 2:
            playerteam = "統一獅"
        elif playerdata[0] == 3:
            playerteam = "富邦悍將"
        elif playerdata[0] == 4:
            playerteam = "中信兄弟"
        data={
            "playerteamid":playerteam,
            "playername":playerdata[1],
            "playerranking":str(playerdata[2])
        }
        datas.append(data)
    datajson = json.dumps(datas)
    return HttpResponse(datajson)

def rankingh(request):
    datas=[]
    datasql = "select teamid,playername,h from players  order by  h  desc limit 5;"
    playersdata=playersdbdata.read(datasql)
    for playerdata in  playersdata:
        if playerdata[0] == 1:
            playerteam = "Lamigo"
        elif playerdata[0] == 2:
            playerteam = "統一獅"
        elif playerdata[0] == 3:
            playerteam = "富邦悍將"
        elif playerdata[0] == 4:
            playerteam = "中信兄弟"
        data={
            "playerteamid":playerteam,
            "playername":playerdata[1],
            "playerranking":str(playerdata[2])
        }
        datas.append(data)
    datajson = json.dumps(datas)
    return HttpResponse(datajson)

def rankinghr(request):
    datas=[]
    datasql = "select teamid,playername,hr from players  order by  hr  desc limit 5;"
    playersdata=playersdbdata.read(datasql)
    for playerdata in  playersdata:
        if playerdata[0] == 1:
            playerteam = "Lamigo"
        elif playerdata[0] == 2:
            playerteam = "統一獅"
        elif playerdata[0] == 3:
            playerteam = "富邦悍將"
        elif playerdata[0] == 4:
            playerteam = "中信兄弟"
        data={
            "playerteamid":playerteam,
            "playername":playerdata[1],
            "playerranking":str(playerdata[2])
        }
        datas.append(data)
    datajson = json.dumps(datas)
    return HttpResponse(datajson)

def rankingera(request):
    datas=[]
    datasql = "select teamid,playername,era from players  where era >0.00 and ip >146.1 order by era limit 5;"
    playersdata=playersdbdata.read(datasql)
    for playerdata in  playersdata:
        if playerdata[0] == 1:
            playerteam = "Lamigo"
        elif playerdata[0] == 2:
            playerteam = "統一獅"
        elif playerdata[0] == 3:
            playerteam = "富邦悍將"
        elif playerdata[0] == 4:
            playerteam = "中信兄弟"
        data={
            "playerteamid":playerteam,
            "playername":playerdata[1],
            "playerranking":str(playerdata[2])
        }
        datas.append(data)
    datajson = json.dumps(datas)
    return HttpResponse(datajson)

def rankingw(request):
    datas=[]
    datasql = "select teamid,playername,w from players order by w desc limit 5;"
    playersdata=playersdbdata.read(datasql)
    for playerdata in  playersdata:
        if playerdata[0] == 1:
            playerteam = "Lamigo"
        elif playerdata[0] == 2:
            playerteam = "統一獅"
        elif playerdata[0] == 3:
            playerteam = "富邦悍將"
        elif playerdata[0] == 4:
            playerteam = "中信兄弟"
        data={
            "playerteamid":playerteam,
            "playername":playerdata[1],
            "playerranking":str(playerdata[2])
        }
        datas.append(data)
    datajson = json.dumps(datas)
    return HttpResponse(datajson)

def rankingsv(request):
    datas=[]
    datasql = "select teamid,playername,sv from players order by sv desc limit 5;"
    playersdata=playersdbdata.read(datasql)
    for playerdata in  playersdata:
        if playerdata[0] == 1:
            playerteam = "Lamigo"
        elif playerdata[0] == 2:
            playerteam = "統一獅"
        elif playerdata[0] == 3:
            playerteam = "富邦悍將"
        elif playerdata[0] == 4:
            playerteam = "中信兄弟"
        data={
            "playerteamid":playerteam,
            "playername":playerdata[1],
            "playerranking":str(playerdata[2])
        }
        datas.append(data)
    datajson = json.dumps(datas)
    return HttpResponse(datajson)

def rankingrbi(request):
    datas=[]
    datasql = "select teamid,playername,rbi from players order by rbi desc limit 5;"
    playersdata=playersdbdata.read(datasql)
    for playerdata in  playersdata:
        if playerdata[0] == 1:
            playerteam = "Lamigo"
        elif playerdata[0] == 2:
            playerteam = "統一獅"
        elif playerdata[0] == 3:
            playerteam = "富邦悍將"
        elif playerdata[0] == 4:
            playerteam = "中信兄弟"
        data={
            "playerteamid":playerteam,
            "playername":playerdata[1],
            "playerranking":str(playerdata[2])
        }
        datas.append(data)
    datajson = json.dumps(datas)
    return HttpResponse(datajson)

def rankingsb(request):
    datas=[]
    datasql = "select teamid,playername,sb from players order by sb desc limit 5;"
    playersdata=playersdbdata.read(datasql)
    for playerdata in  playersdata:
        if playerdata[0] == 1:
            playerteam = "Lamigo"
        elif playerdata[0] == 2:
            playerteam = "統一獅"
        elif playerdata[0] == 3:
            playerteam = "富邦悍將"
        elif playerdata[0] == 4:
            playerteam = "中信兄弟"
        data={
            "playerteamid":playerteam,
            "playername":playerdata[1],
            "playerranking":str(playerdata[2])
        }
        datas.append(data)
    datajson = json.dumps(datas)
    return HttpResponse(datajson)

def rankingso(request):
    datas=[]
    datasql = "select teamid,playername,so from players order by so desc limit 5;"
    playersdata=playersdbdata.read(datasql)
    for playerdata in  playersdata:
        if playerdata[0] == 1:
            playerteam = "Lamigo"
        elif playerdata[0] == 2:
            playerteam = "統一獅"
        elif playerdata[0] == 3:
            playerteam = "富邦悍將"
        elif playerdata[0] == 4:
            playerteam = "中信兄弟"
        data={
            "playerteamid":playerteam,
            "playername":playerdata[1],
            "playerranking":str(playerdata[2])
        }
        datas.append(data)
    datajson = json.dumps(datas)
    return HttpResponse(datajson)

def rankinghld(request):
    datas=[]
    datasql = "select teamid,playername,hld from players order by hld desc limit 5;"
    playersdata=playersdbdata.read(datasql)
    for playerdata in  playersdata:
        if playerdata[0] == 1:
            playerteam = "Lamigo"
        elif playerdata[0] == 2:
            playerteam = "統一獅"
        elif playerdata[0] == 3:
            playerteam = "富邦悍將"
        elif playerdata[0] == 4:
            playerteam = "中信兄弟"
        data={
            "playerteamid":playerteam,
            "playername":playerdata[1],
            "playerranking":str(playerdata[2])
        }
        datas.append(data)
    datajson = json.dumps(datas)
    return HttpResponse(datajson)

def chartavg(request):
    return render(request,'player/chartavg.html')

def charth(request):
    return render(request,'player/charth.html') 

def charthr(request):
    return render(request,'player/charthr.html') 

def chartera(request):
    return render(request,'player/chartera.html') 

def chartw(request):
    return render(request,'player/chartw.html')

def chartsv(request):
    return render(request,'player/chartsv.html')

def chartrbi(request):
    return render(request,'player/chartrbi.html')

def chartsb(request):
    return render(request,'player/chartsb.html')

def chartso(request):
    return render(request,'player/chartso.html')

def charthld(request):
    return render(request,'player/charthld.html')

def restapi(request):
    return render(request,'player/restapi.html') 

