from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.db import connection
from .models import Members,Teams
import datetime
from django.utils.encoding import smart_str
import base64
from django.core import serializers

def signin(request):  
    if request.method == "POST":
        email = request.POST["email"]
        password = request.POST["password"]
        # captcha = request.POST["captcha"]
        # if request.session['captcha'] == captcha:
        theMember = Members.objects.filter(email=email,password=password).values('memberid')

        if theMember:
            # if 'url' in request.GET:
                # theUrl = request.GET['url']
            # else:
            #     theUrl = "/"
            name = theMember[0]['memberid']
            strJS = "<script>alert('登入成功');location.href='/'</script>"
            response = HttpResponse(strJS)

            remember = None
                #記住我有打勾保留cookie7天

            # print("this:" +name)
            if 'remember' in request.POST.keys():
                #    remember = request.POST["remember"]
                expiresdate = datetime.datetime.now() + datetime.timedelta(days=7)
                response.set_cookie("memberid",name,expires=expiresdate)
            else:
                # print("that:" +name)
                expiresdate = datetime.datetime.now() + datetime.timedelta(days=7)
                response.set_cookie("memberid",name,expires=expiresdate)

            return response
        else:
            # print("登入失敗")
            #return HttpResponse("<h2>登入失敗</h2>")
            return HttpResponse("<script>alert('登入失敗');location.href='/'</script>")
    # else:
    #      return HttpResponse("<script>alert('驗證碼錯誤，請重新輸入');location.href='signin/'</script>")

    # print(email, password, remember)


    # GET   
    return render(request,'signin.html',locals())

def registered(request):
    if  request.method == "POST": 
        teamid = request.POST["teamid"]
        email = request.POST["email"]
        password = request.POST["password"]
        newsletter = request.POST["newsletter"] 
        phoneno = request.POST["phoneno"]
        username = request.POST["username"]
        membername = request.POST["membername"]
        address = request.POST["address"]
        
        Members.objects.create(teamid=Teams.objects.get(teamid=teamid),email=email,password=password,newsletter=newsletter,phoneno=phoneno,username=username,membername=membername,address=address)
        return redirect("/")
    return render(request,'registered.html',locals())
    
def captcha(request):    
    from django.contrib.staticfiles import finders
    import random
    # 安裝 pillow  pip install pillow
    from PIL import Image,ImageDraw,ImageFont   
    list1 = random.sample(['0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F','H','I'],5)
    txt = ''.join(list1)    
    
    # todo 將產生的數字及字母存到session中
    request.session['captcha'] = txt  
    
    width = 15 * 4
    height = 30
    image = Image.new('RGB', (width, height), (255, 255, 255))    
    # 下載字體https://fonts.google.com/
    thefont = finders.find('fonts/Kavivanar-Regular.ttf')
    font = ImageFont.truetype(thefont, 16)   
    draw = ImageDraw.Draw(image)
    draw.text((5, 5), txt,font=font, fill=(255, 0, 0))
    response = HttpResponse(content_type="image/png")
    image.save(response, "PNG")
    return response

def delete(request):
    if request.method == "POST":
        username = request.POST["username"]
        password = request.POST["password"]
        
        a = Members.objects.filter(username=username,password=password)
        print(a)
        a.delete()

    return render(request,'delete.html',locals())  

def revise(request):
    if 'memberid' not in request.COOKIES:
        strJS = "<script>alert('購物前，請先登入');location.href='../registered/'</script>"
        return HttpResponse(strJS)



    if request.method == "POST":
    #接收表單傳過來的資料   
        memberid = request.COOKIES["memberid"]
        teamid = request.POST["teamid"]
        username = request.POST["username"]
        phoneno = request.POST["phoneno"] 
        password = request.POST["password"]  
        address = request.POST["address"] 
        Members.objects.filter(memberid=memberid).update(teamid=Teams.objects.get(teamid=teamid),password=password,phoneno=phoneno,username=username,address=address)
        #轉到會員的首頁上
        return redirect("/")
    
    return render(request,"revise.html")
