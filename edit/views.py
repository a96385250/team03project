from django.shortcuts import render,redirect
from search.models  import Articles, Teams
from player.models import Players,Teams as tem
from store.models import Productcat,Products,Teams
from django.http import HttpResponse
from store.models import Productcat,Products,Teams
from django.core.files.storage import FileSystemStorage
from django.utils.encoding import smart_str
from act.models import Actmember
from act.models import Location

def search(request): 
    title = "Restfual api"
    return render(request,'search/api.html',locals())

def stats(request): 
    title = "Stats"
    return render(request,'search/stats.html',locals())

# Create your views here.
def edit(request):
    return render(request,'edit/edit.html')

def screate(request):
    if request.method == "POST":
        atitle = request.POST["title"]
        aurl = request.POST["url"]
        adate = request.POST["date"]
        atype = request.POST["articletype"]
 
        Articles.objects.create(title=atitle, url=aurl, date=adate, teamid=Teams.objects.get(teamname=request.POST["team"]),articletype=atype)
        return redirect("/edit/sread/")

    teams = Teams.objects.all()
    return render(request,'search/create.html',locals())

def sread(request):
    articles = Articles.objects.all()
    teams = Teams.objects.all() 
    return render(request,'search/read.html',locals())

def supdate(request):
    if request.method == "POST":
        atitle = request.POST["title"]
        aurl = request.POST["url"]
        print(aurl)
        adate = request.POST["date"]
        team = Teams.objects.get(teamname=request.POST["team"])
        ateam=team.teamid
        atype = request.POST["type"]

        Articles.objects.filter(articleid=request.POST["id"]).update(title=atitle, url=aurl, date=adate, teamid=ateam,articletype=atype)
        return redirect("/edit/sread/")

    # article = Articles.objects.get(articleid=articleid)
    # teams = Teams.objects.all()

    return render(request,'search/update.html',locals())
 
def sdelete(request, articleid):
    article = Articles.objects.get(articleid=articleid)
    article.delete()
    return redirect('/edit/sread/')

def playerlist(request):
    players = Players.objects.all()
    return render(request,'aien0313/playerlist.html',locals())

def aien0313crte(request):
    if request.method =="POST" :     
        teamid = request.POST["teamid"]
        playername = request.POST["playername"]
        avg = request.POST["avg"]
        h = request.POST["h"]
        hr = request.POST["hr"]
        era = request.POST["era"]
        w = request.POST["w"]
        sv = request.POST["sv"]
        rbi = request.POST["rbi"]
        sb = request.POST["sb"]
        so = request.POST["so"]

        Players.objects.create(teamid=tem.objects.get(teamid=teamid),playername=playername,avg=avg,h=h,hr=hr,era=era,w=w,sv=sv,rbi=rbi,sb=sb,so=so)
        return redirect('../playerlist/')


    teams = Teams.objects.all()
    return render(request,'aien0313/create.html',locals())

def aien0313upd(request,id):
    if request.method =="POST":
        playerupdate = Players.objects.get(playerid=id)
        print(request.POST["teamid"])
        teamsid=tem.objects.get(teamname=request.POST["teamid"])
        team = teamsid.teamid
        print(team)
        playername = request.POST["playername"]
        avg = request.POST["avg"]
        h = request.POST["h"]
        hr = request.POST["hr"]
        era = request.POST["era"]
        w = request.POST["w"]
        sv = request.POST["sv"]
        rbi = request.POST["rbi"]
        sb = request.POST["sb"]
        so = request.POST["so"]

        playerupdate.playername=playername
        playerupdate.teamid=teamsid
        playerupdate.avg=avg
        playerupdate.h=h
        playerupdate.hr=hr
        playerupdate.era=era
        playerupdate.w=w
        playerupdate.sv=sv
        playerupdate.rbi=rbi
        playerupdate.sb=sb
        playerupdate.so=so

        playerupdate.save()  
        return redirect('../playerlist/')

    teams = Teams.objects.all()
    playerupdate = Players.objects.get(playerid=id)
    return render(request,'aien0313/update.html',locals())

def aien0313del(request,id):
    playerdelete = Players.objects.get(playerid=id)
    playerdelete.delete()
    return redirect('../playerlist/')


def index(request):  
    title = "管理商品"
    #呼叫方法
    products = Products.objects.all()
    productcat = Productcat.objects.all()
    return render(request,'store/index.html',locals())

def create(request):
    title = "商品新增"
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
        return redirect('/edit/index/')

    productcat = Productcat.objects.all()
    teams = Teams.objects.all()
    return render(request,'store/create.html',locals())

def delete(request, productid):
    products = Products.objects.get(productid=productid)
    products.delete()
    return redirect("/edit/index/")

def update(request, productid):
    title = "商品更新"
    if request.method == "POST" and request.FILES["image"]:
        productname = request.POST["productname"]
        price = request.POST["price"]
        productdesc = request.POST["productdesc"]
        team = Teams.objects.get(teamname=request.POST["teamid"])
        teamid = team.teamid
        category = Productcat.objects.get(categoryname=request.POST["categoryid"])
        categoryid = category.categoryid
        
        myFile = request.FILES["image"]
        fs = FileSystemStorage()
        image = fs.save(myFile.name,myFile)

        Products.objects.filter(productid=productid).update(productname=productname,price=price,productdesc=productdesc,teamid=teamid)
        return redirect("/edit/index/")

    products = Products.objects.get(productid=productid)
    productcat = Productcat.objects.all()
    teams = Teams.objects.all()
    return render(request,'store/update.html',locals())
    
def testencoding(request):
    u1 = "中文"
    u2 = smart_str(u1,encoding='utf-8')
    response = HttpResponse("<h2>encoding test</h2>")
    response.set_cookie("u2",u2)
    return response
def person(request):
    # db = pymysql.connect("/api3/Member/","root","root","member")
    # cursor = db.cursor()
    # sql = "select * from teamid"
    
    return render(request,'personnelManagement/index.html',locals())

# ==
def actindex(request):     
    title = "會員資料"
    actmember = Actmember.objects.all()
    return render(request,'act/edit_printout.html',locals())


def actdelete(request, id):
    id = Actmember.objects.get(id = id)
    id.delete()
    # return redirect("/act/print/")
    return redirect("/edit/actprint/")
    # return render(request,'act/edit_printout.html',locals())

def actupdate(request, id):
    
    if request.method == "POST":
        #接收表單傳過來的資料
        actname = request.POST["actname"]
        name = request.POST["name"]
        email = request.POST["email"]  #w124@gmail.com
        password = request.POST["password"]  
        age = request.POST["age"] 
        
        Actmember.objects.filter(id=id).update(actname=actname,name=name,email=email,password=password,age=age)
        #轉到會員的首頁上
        # return redirect("/act/print/")
        return redirect("/edit/actprint/")
    id = Actmember.objects.get(id=id)
    l=Location.objects.all()
    return render(request,'act/edit_update.html',locals())
    
def actcheck(request):
    if request.method == "POST" :
        actname = request.POST["actname"]
        name = request.POST["name"]
        password = request.POST["password"]
        age = request.POST["age"]
        email = request.POST['email']
        #將資料寫進資料庫
        Actmember.objects.create(actname=actname,name=name,password=password,age=age,email=email)
        # return redirect('/act/')
    l=Location.objects.all()
    return render(request,'act/actedit.html',locals())


def actcreate(request):  
    title="新增"
    
    if request.method == "POST" :
        actname = request.POST["actname"]
        name = request.POST["name"]
        password = request.POST["password"]
        age = request.POST["age"]
        email = request.POST['email']

        #將資料寫進資料庫
        
        Actmember.objects.create(id=id,actname=actname,name=name,password=password,age=age,email=email)
        # return redirect('/act/')
    return render(request,'act/edit_printout.html',locals())
   






