
from django.shortcuts import render, redirect
from django.http import HttpResponse
from act.models import Actmember
from act.models import Location
import requests
from bs4 import BeautifulSoup
import time
import re
# import pymongo
import json
import pymysql as mysql
import csv
from django.db import connection
import urllib.parse as UP
# Create your views here.



#建立物件
actmember = Actmember()
def crawler(request):
    time.sleep(2) #to be less suspicious 
    # url = "http://www.cpbl.com.tw/news/lists.html"
    url = "https://www.uni-lions.com.tw/news.aspx"
    headers_data = {
        'user-agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'
    }
    response = requests.get(url, headers=headers_data)
    articles = BeautifulSoup(response.text,'lxml')

    items = articles.select('div.news_info div.news')
    # items.pop(1)
    parsed = []
    for item in items:
        # ====o========
        # print("crawling:" + url )
        # dtpattern=r'\d{4}.\d{2}.\d{2}'
        # data = item.find(class_= "news_row_date").getText()
        # date = re.findall(dtpattern,data)
        # links = item.find_all("a", href=True)
        # links = item.find_all("img", src=True)
        title = item.find('span',class_='gray_t18').string
        # =========o============
        # article = {
        #     "title":item.find(class_= "news_row_title",).getText(),
        #     "teamid":3,
        #     "url":links[0],
        #     "more":links[1],
        #     "articletype":"sport",
        #     "date":date,
        #     "day":item.find(class_= "day").getText(),
        #     "summary":item.find(class_= "news_row_summary").find(text=True, recursive=False),
        # }
        article = [
            # 3,
            # item.find(class_= "news_row_title",).getText(),
            # "http://www.cpbl.com.tw/" + item.find_all("a", href=True)[0]["href"],
            # item.find_all("img", src=True)[0]["src"],
            # date,
            # item.find(class_= "news_row_summary").find(text=True, recursive=False),
            title
        ]
        parsed.append(article)
       
        # print("date:{}".format(date[0]))
        # print("date: " +item.find(class_= "news_row_date").getText())
        # print("day: " + item.find(class_= "day").getText())
        # # print("img: " + item.find("img", "src"))
        # print("title: " + item.find(class_= "news_row_title",).getText())
        
        # print("summary: " + item.find(class_= "news_row_summary").find(text=True, recursive=False))

        # titleurl = links[0]
        # moreurl = links[1] 
        # print("=========================================================")
        
    saveMySql(parsed)
    print("before redirt")
    return render(request,'act/input_sc.html',locals())

# def crawl(request):
#     db = mysql.connect("localhost", "root", "root", 'yamidb')
#     with db.cursor() as cursor:
#         sql = """DELETE FROM location """
#         # cursor.execute(sql, )
#         cursor.execute(sql)
#         db.commit()
#         print("clearing....")
    # for i in range(10):
    #     if(i == 0): 
    #         crawler("http://www.cpbl.com.tw/news/lists.html")
    #     else:
    #         crawler("http://www.cpbl.com.tw/news/lists/news_lits.html?year=0&month=0&search=&tag=&per_page={}".format(i))

    
def saveMySql(parsed):
    print("saving.......")
    print(parsed)
    db = mysql.connect("localhost", "root", "root", 'yamidb')
    with db.cursor() as cursor:
        sql = """INSERT INTO location(location_name) values(%s) """
        # cursor.execute(sql, )
        cursor.executemany(sql, parsed)
        db.commit()
        
    print("....done")
    
    # return redirect('/')

# def opage(request):
#     # return render(request,'act/input_sc.html',locals())
    
    

def index(request):  
    #cookies中沒有name表示沒有登入過
    # print(request.path)
    #轉到登入頁面
    # if 'name' not in request.COOKIES:
    #     # return redirect("/member/login")
    #     theUrl = request.path
    #     strJS = "<script>alert('購物前，請先登入');location.href='/member/login/?url=" + theUrl + "'</script>"
    #     return HttpResponse(strJS)
        
    title = "會員資料"
    actmember = Actmember.objects.all()
    # request?====url??
    return render(request,'act/printout.html',locals())


def delete(request, id):
    # with connection.cursor() as cursor:
    #     sql = """delete from members where id=%s"""
    #     #tuple
    #     cursor.execute(sql,(id,))
    # actmember.delete(id)
    id = Actmember.objects.get(id = id)
    id.delete()
    return redirect("/act/print/")

    # return HttpResponse("<h2>" + str(id) + "</h2>")

def update(request, id):
    #步驟二
    if request.method == "POST":
        #接收表單傳過來的資料
        actname = request.POST["actname"]
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
        # _member = (name,email,password,age,id)
        # member.update(_member)
        Actmember.objects.filter(id=id).update(actname=actname,name=name,email=email,password=password,age=age)
        
        #轉到會員的首頁上
        return redirect("/act/print/")
    id = Actmember.objects.get(id=id)
    l=Location.objects.all()
    return render(request,'act/update.html',locals())


def check(request):
    return render(request,'home/check.html')

def maincheck(request):
    return render(request,'main.html')
    
def actcheck(request):
    if request.method == "POST" :
        
        # and request.FILES["productimage"]
        #接收表單傳過來的資料
        actname = request.POST["actname"]
        name = request.POST["name"]
        password = request.POST["password"]
        age = request.POST["age"]
        email = request.POST['email']
        # productimage = request.POST["productimage"]
        

        #檔案上傳到media資料夾中
        # myFile = request.FILES["productimage"]
        # fs = FileSystemStorage()
        # productimage = fs.save(myFile.name,myFile)

        #將資料寫進資料庫
   
        Actmember.objects.create(actname=actname,name=name,password=password,age=age,email=email)
        # return redirect('/act/')
        # return redirect('/print/')
    l=Location.objects.all()
#   if 'name' not in request.COOKIES:
#         theUrl = request.path
#         return redirect("/member/login/?url=" + theUrl)
#         # return HttpResponse("<script>alert('購物前，請先登入');location.href='/member/login'</script>")
   
    # for _location in l:
    #     print('{},{}'.format(_location.idlocation,_location.location_name))
    #     print(l)
    # title="活動地點"

    #步驟二
    # if request.method == "POST" :
                # and request.FILES["productimage"]:
        #接收表單傳過來的資料
        # idlocation = request.POST["idlocation"]
        # location_name = request.POST["location_name"]
        

        # #檔案上傳到media資料夾中
        # myFile = request.FILES["productimage"]
        # fs = FileSystemStorage()
        # productimage = fs.save(myFile.name,myFile)

        # #將資料寫進資料庫
        # Product.objects.create(categoryid=Category.objects.get(categoryid=categoryid),modelnumber=modelnumber,modelname=modelname,unitcost=unitcost,productimage=productimage,description=description)
        # return redirect('/store/')

    #步驟一 GET 回傳空白的表單
    # categories = Category.objects.all()  #select * from categories
    # print(categories)
    return render(request,'act/act.html',locals())
# def register(request):  
#     title = "會員註冊"
#     if request.method == "POST":
#         #接收表單傳過來的資料
#         name = request.POST["name"]
#         email = request.POST["email"]  #w124@gmail.com
#         password = request.POST["password"]  
#         age = request.POST["age"] 

#         #將資料寫進資料庫
#         # with connection.cursor() as cursor:
#         #     sql = """insert into members(name,email,password,age)
#         #              values(%s,%s,%s,%s)"""
#         #     #tuple
#         #     cursor.execute(sql,(name,email,password,age))
#         _act = (name,email,password,age)
#         member.create(_act)
#         #轉到會員的首頁上
#     return redirect("/act/")
   
        
#     return render(request,'act/act.html',locals())
def create(request):

    # print(request.path)
    #cookies中沒有name表示沒有登入過
    #轉到登入頁面
    # if 'name' not in request.COOKIES:
    #     theUrl = request.path
    #     return redirect("/member/login/?url=" + theUrl)
    #     # return HttpResponse("<script>alert('購物前，請先登入');location.href='/member/login'</script>")
       
    title="產品新增"

    #步驟二
    if request.method == "POST" :
        print
        # and request.FILES["productimage"]
        #接收表單傳過來的資料
        name = request.POST["name"]
        password = request.POST["password"]
        age = request.POST["age"]
        email = request.POST['email']
        # productimage = request.POST["productimage"]
        

        #檔案上傳到media資料夾中
        # myFile = request.FILES["productimage"]
        # fs = FileSystemStorage()
        # productimage = fs.save(myFile.name,myFile)

        #將資料寫進資料庫
        
        Actmember.objects.create(id=id,name=name,password=password,age=age,email=email)
        return redirect('/act/')
    #  return render(request,'act/act.html',locals())

    #步驟一 GET 回傳空白的表單
    # categories = Category.objects.all()  #select * from categories
    # print(categories)
    # return render(request,'store/create.html',locals())