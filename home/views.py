from django.shortcuts import render

# Create your views here.
def check(request):
    return render(request,'home/check.html')

def home(request):
    return render(request,'home/home.html')