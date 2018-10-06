from django.shortcuts import render
from django.http import HttpResponse
from .models import Players,Teams
import requests
from bs4 import BeautifulSoup
import re

# Create your views here.

def player(request) :
    # players = Players.objects.all()
    strJS = "<script>location.href='/edit/aien0313crte/'</script>"
    return HttpResponse(strJS)

def catch(request):
    url="http://www.cpbl.com.tw/stats/all.html?&game_type=01&year=2018&stat=pbat"
    url_params={
        "sort":"AVG",
        "order":"desc"
    }
    headers={
     "user-agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36"
    }

    player =requests.get(url,params=url_params,headers=headers)
    playerdata=BeautifulSoup(player.text,"lxml")

    playerlist = playerdata.select("table.std_tb tr")
    print(type(playerdata))
    for playerdatas in playerlist:
        playername = playerdatas.find("a").get_text()
        print(playerdatas.find("a").get_text())
        avgtds = playerdatas.select("td:nth-of-type(18)")
        htds =  playerdatas.select("td:nth-of-type(8)")
        hrtds = playerdatas.select("td:nth-of-type(12)")

        for avgs in avgtds:
            avg = avgs.string 
            print(avgs.string)
            for hs in htds:
                hs = hs.string
                print(hs.string)
                for hrs in hrtds:
                    hr = hrs.string
                    print(hrs.string)
        # print(playerdatas.find_all("td"))
        # for playertd in playerdatas.find_all("td"):
        #     print(playerdatas.find('td').get_text())

        # a = playerdatas.findAll('td')[17:18]
        # for b in a:
        #     print(b.string)
        
        # print(playerdatas.findAll('td')[17:18])
        # print(playerdatas.findAll('td')[7:8])
        
    return render(request,'player/catch.html') 
def restapi(request):
    return render(request,'player/restapi.html') 

