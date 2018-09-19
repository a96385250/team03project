# from django.shortcuts import render, redirect
# from django.http import HttpResponse
# from django.db import connection
# from store.models import Category, Product
# from django.utils.encoding import smart_str
# from django.core import serializers
# from django.core.files.storage import FileSystemStorage

from django.shortcuts import render, redirect
from django.http import HttpResponse
from store.models import Category, Product
from django.core.files.storage import FileSystemStorage
from django.utils.encoding import smart_str

# Create your views here.

def index(request):  
    title = "商品目錄"
    #呼叫方法
    products = Product.objects.all()
    categorys = Category.objects.all()
    return render(request,'store/index.html',locals())

def create(request):
    title="產品新增"
    if request.method == "POST" and request.FILES["productimage"]:
        categoryid = request.POST["categoryid"]
        modelname = request.POST["modelname"]
        unitcost = request.POST["unitcost"]
        description = request.POST["description"]
        # productimage = request.POST["productimage"]
        
        myFile = request.FILES["productimage"]
        fs = FileSystemStorage()
        productimage = fs.save(myFile.name,myFile)

        Product.objects.create(categoryid=Category.objects.get(categoryid=categoryid),modelname=modelname,unitcost=unitcost,productimage=productimage,description=description)
        return redirect('/store/')

    categories = Category.objects.all()
    return render(request,'store/create.html',locals())

def delete(request):
    pass

def update(request,productid):
    title="產品更新"
    pass
    
def testencoding(request):
    u1 = "中文"
    u2 = smart_str(u1,encoding='utf-8')
    response = HttpResponse("<h2>encoding test</h2>")
    response.set_cookie("u2",u2)
    return response
