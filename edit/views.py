from django.shortcuts import render,redirect
from search.models  import Articles, Teams
from player.models import Players,Teams
from django.http import HttpResponse


articles = Articles
# Create your views here.
def edit(request):
    return render(request,'edit/edit.html')

def screate(request):
    return render(request,'search/create.html',locals())

def sread(request):
    data = articles.objects.all()
    for article in data:
        print(article.title)
    return render(request,'search/read.html',locals())

def supdate(request):
    return render(request,'search/update.html',locals())
 
def sdelete(request):
    return render(request,'search/delete.html',locals())

# ========================================================================
def playerlist(request):
    players = Players.objects.all()
    return render(request,'aien0313/playerlist.html',locals())

def aien0313crte(request):
    if request.method =="POST" :     
        teamid = request.POST["teamid"]
        playername = request.POST["playername"]
        avg = request.POST["avg"]
        h = request.POST["h"]
        hr = request.POST["hr"]
        era = request.POST["era"]
        w = request.POST["w"]
        sv = request.POST["sv"]
        rbi = request.POST["rbi"]
        sb = request.POST["sb"]
        so = request.POST["so"]
        
        Players.objects.create(teamid=Teams.objects.get(teamid=teamid),playername=playername,avg=avg,h=h,hr=hr,era=era,w=w,sv=sv,rbi=rbi,sb=sb,so=so)
        return redirect('../playerlist/')


    teams = Teams.objects.all()
    return render(request,'aien0313/create.html',locals())

def aien0313red(request):
    return render(request,'aien0313/read.html',locals())

def aien0313upd(request,id):
    if request.method =="POST":
        playerupdate = Players.objects.get(playerid=id)
        playername = request.POST["playername"]
        avg = request.POST["avg"]
        h = request.POST["h"]
        hr = request.POST["hr"]
        era = request.POST["era"]
        w = request.POST["w"]
        sv = request.POST["sv"]
        rbi = request.POST["rbi"]
        sb = request.POST["sb"]
        so = request.POST["so"]

        playerupdate.playername=playername
        playerupdate.avg=avg
        playerupdate.h=h
        playerupdate.hr=hr
        playerupdate.era=era
        playerupdate.w=w
        playerupdate.sv=sv
        playerupdate.rbi=rbi
        playerupdate.sb=sb
        playerupdate.so=so

        playerupdate.save()  
        return redirect('../playerlist/')

    teams = Teams.objects.all()
    playerupdate = Players.objects.get(playerid=id)
    return render(request,'aien0313/update.html',locals())

def aien0313del(request,id):
    playerdelete = Players.objects.get(playerid=id)
    playerdelete.delete()
    return redirect('../playerlist/')
 