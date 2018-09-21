from django.shortcuts import render
def signin(request):
    return render(request,'signin.html')
def registered(request):
    return render(request,'registered.html')
