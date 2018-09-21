from django.shortcuts import render, redirect
from search.models  import Articles, Teams


# Create your views here.
def edit(request):
    return render(request,'edit/edit.html')

def screate(request):
    if request.method == "POST":
        atitle = request.POST["title"]
        aurl = request.POST["url"]
        adate = request.POST["date"]
        atype = request.POST["articletype"]
 
        Articles.objects.create(title=atitle, url=aurl, date=adate, teamid=Teams.objects.get(teamname=request.POST["team"]),articletype=atype)
        return redirect("/edit/sread/")

    teams = Teams.objects.all()
    return render(request,'search/create.html',locals())

def sread(request):
    articles = Articles.objects.all()
    for article in articles:
        print(article.title)

    return render(request,'search/read.html',locals())

def supdate(request, articleid):
    if request.method == "POST":
        atitle = request.POST["title"]
        aurl = request.POST["url"]
        adate = request.POST["date"]
        team = Teams.objects.get(teamname=request.POST["team"])
        ateam=team.teamid
        atype = request.POST["articletype"]

        Articles.objects.filter(articleid=articleid).update(title=atitle, url=aurl, date=adate, teamid=ateam,articletype=atype)
        return redirect("/edit/sread/")

    article = Articles.objects.get(articleid=articleid)
    teams = Teams.objects.all()

    print(article.teamid.teamid)
    for team in teams:
        print(team.teamid)
    return render(request,'search/update.html',locals())
 
def sdelete(request, articleid):
    article = Articles.objects.get(articleid=articleid)
    article.delete()
    return redirect('/edit/sread/')