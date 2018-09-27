from django.shortcuts import render,redirect
from .models import Members,Teams
def signin(request):
    return render(request,'signin.html')
def registered(request):
    if request.method == "POST": 
        teamid = request.POST["teamid"]
        email = request.POST["email"]
        password = request.POST["password"]
        newsletter = request.POST["newsletter"] 
        phoneno = request.POST["phoneno"]
        username = request.POST["username"]
        membername = request.POST["membername"]
        Members.objects.create(teamid=Teams.objects.get(teamid=teamid),email=email,password=password,newsletter=newsletter,phoneno=phoneno,username=username,membername=membername)
        return redirect("/")



    return render(request,'registered.html',locals())
