from django.shortcuts import render

# Create your views here.
def edit(request):
    return render(request,'edit/edit.html')

def screate(request):
    return render(request,'search/create.html',locals())

def sread(request):
    return render(request,'search/read.html',locals())

def supdate(request):
    return render(request,'search/update.html',locals())
 
def sdelete(request):
    return render(request,'search/delete.html',locals())