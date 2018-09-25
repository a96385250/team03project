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
from store.modelsproduct import Member

# Create your views here.
member = Member()

def store(request):  
    title = "商品目錄"
    #呼叫方法
    products = Product.objects.all()
    categorys = Category.objects.all()
    return render(request,'store/store.html',locals())

def index(request):  
    title = "商品目錄"
    #呼叫方法
    products = Product.objects.all()
    categorys = Category.objects.all()
    return render(request,'store/index.html',locals())

def create(request):
    title = "產品新增"
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
        return redirect('/store/index/')

    categories = Category.objects.all()
    return render(request,'store/create.html',locals())

def delete(request, productid):
    member.delete(productid)
    return redirect("/store/index/")

def update(request, id):
    #步驟二
    if request.method == "POST":
        #接收表單傳過來的資料
        name = request.POST["name"]
        email = request.POST["email"]  #w124@gmail.com
        password = request.POST["password"]  
        age = request.POST["age"] 

        #將資料寫進資料庫
        # with connection.cursor() as cursor:
        #     sql = """update members set name=%s,email=%s,password=%s,age=%s
        #              where id=%s"""
        #     #tuple
        #     cursor.execute(sql,(name,email,password,age,id))
        _member = (name,email,password,age,id)
        member.update(_member)
        #轉到會員的首頁上
        return redirect("/member/")

    #步驟一
    # with connection.cursor() as cursor:
    #     sql = """select * from members where id=%s"""
    #     #tuple
    #     cursor.execute(sql,(id,))
    #     member = cursor.fetchone()
    membersingle = member.single(id)
    return render(request,'member/update.html',locals())
    
def testencoding(request):
    u1 = "中文"
    u2 = smart_str(u1,encoding='utf-8')
    response = HttpResponse("<h2>encoding test</h2>")
    response.set_cookie("u2",u2)
    return response
