from django.shortcuts import render, redirect
from django.http import HttpResponse
from store.models import Productcat,Products,Teams
from django.core.files.storage import FileSystemStorage
from django.utils.encoding import smart_str
from store.modelsproduct import Member


# Create your views here.
member = Member()

def store(request):  
    title = "商品目錄"
    #呼叫方法
    products = Products.objects.all()
    productcat = Productcat.objects.all()
    return render(request,'store/store.html',locals())

def index(request):  
    title = "商品目錄"
    #呼叫方法
    products = Products.objects.all()
    productcat = Productcat.objects.all()
    return render(request,'store/index.html',locals())

def create(request):
    title = "產品新增"
    if request.method == "POST" and request.FILES["image"]:
        categoryid = request.POST["categoryid"]
        productname = request.POST["productname"]
        price = request.POST["price"]
        productdesc = request.POST["productdesc"]
        teamid = request.POST["teamid"]
        
        myFile = request.FILES["image"]
        fs = FileSystemStorage()
        image = fs.save(myFile.name,myFile)

        Products.objects.create(categoryid=Productcat.objects.get(categoryid=categoryid),teamid=Teams.objects.get(teamid=teamid),productname=productname,price=price,image=image,productdesc=productdesc)
        return redirect('/store/index/')

    productcat = Productcat.objects.all()
    teams = Teams.objects.all()
    return render(request,'store/create.html',locals())

def delete(request, productid):
    member.delete(productid)
    return redirect("/store/index/")

# def update(request,productid):
#     title = "產品更新"
#     if request.method == "POST" and request.FILES["image"]:
#         categoryid = request.POST["categoryid"]
#         productname = request.POST["productname"]
#         price = request.POST["price"]
#         productdesc = request.POST["productdesc"]
#         teamid = request.POST["teamid"]
        
#         myFile = request.FILES["image"]
#         fs = FileSystemStorage()
#         image = fs.save(myFile.name,myFile)

#         Products.objects.create(categoryid=Productcat.objects.get(categoryid=categoryid),teamid=Teams.objects.get(teamid=teamid),productname=productname,price=price,image=image,productdesc=productdesc)
#         return redirect('/store/index/')

#     productcat = Productcat.objects.all()
#     teams = Teams.objects.all()
#     return render(request,'store/create.html',locals())
def update(request):  
    title = "呼叫 Restfual api"
    return render(request,'store/create.html',locals())


    
def testencoding(request):
    u1 = "中文"
    u2 = smart_str(u1,encoding='utf-8')
    response = HttpResponse("<h2>encoding test</h2>")
    response.set_cookie("u2",u2)
    return response
