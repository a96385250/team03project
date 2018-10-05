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
    url="http://www.cpbl.com.tw/stats/toplist.html"
    headers={
     "user-agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36"
    }
    player =requests.get(url,headers=headers)
    soup=BeautifulSoup(player.text,"lxml")
    print(soup.prettify())
    return render(request,'player/catch.html') 
def restapi(request):
    return render(request,'player/restapi.html') 

