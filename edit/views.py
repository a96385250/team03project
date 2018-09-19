from django.shortcuts import render
from search.models  import Articles, Teams

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

def aien0313crte(request):
    return render(request,'aien0313/create.html')

def aien0313red(request):
    return render(request,'aien0313/read.html',locals())

def aien0313upd(request):
    
    return render(request,'aien0313/update.html',locals())

def aien0313del(request):
    return render(request,'aien0313/delete.html',locals())
 