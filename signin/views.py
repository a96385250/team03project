from django.shortcuts import render,redirect
from .models import Members,Teams
def signin(request):


    return render(request,'signin.html')
    
def registered(request):
   
    if request.method == "POST": 
        membername = request.POST["name"]
        email = request.POST["email"]
        username = request.POST["username"]
        password = request.POST["password"]
        
        teamid = request.POST["teamid"]

        Members.objects.create(teamid=Teams.objects.get(teamid=teamid),name=membername,email=email,username=username,password=password,)
        
        return redirect("/")

    return render(request,'registered.html',locals())
