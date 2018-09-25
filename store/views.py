from django.shortcuts import render, redirect
from django.http import HttpResponse
from store.models import Productcat,Products,Teams
from django.core.files.storage import FileSystemStorage
from django.utils.encoding import smart_str


# Create your views here.

def store(request):  
    title = "商城"
    #呼叫方法
    teams = Teams.objects.all()
    products = Products.objects.all()
    productcat = Productcat.objects.all()
    return render(request,'store/store.html',locals())
