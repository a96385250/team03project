from django.shortcuts import render
from django.http import HttpResponse
from store.models import Productcat,Products,Teams
import requests
from bs4 import BeautifulSoup
import time
import re
import json
import urllib.parse as UP
import pymysql as mysql

# Create your views here.

def store(request):  
    title = "商城"
    #呼叫方法
    teams = Teams.objects.all()
    products = Products.objects.all()
    return render(request,'store/store.html',locals())

def category(request,teamid):
    title = "隊伍商城"
    teamid = Teams.objects.get(teamid = teamid)
    teams = Teams.objects.all()
    products = Products.objects.filter(teamid = teamid).all
    return render(request,'store/category.html',locals())

def crawler(request):
    # 統一
    url = "https://www.uni-lions.com.tw/store.aspx?type=2"
    time.sleep(2)
    headers_data = {
        'user-agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'
    }
    response = requests.get(url, headers=headers_data)
    soup = BeautifulSoup(response.text,'lxml')
    items = soup.select('div.info > div.item')
    sites = soup.select('div.page_info > div.arrow_right')
    parsed = []
    for item in items:
        teamid=2
        categoryid = 1
        productname = item.find('td',class_="title").get_text()
        test = item.find('a').get('href')
        match = re.search(r'(?P<other>\D+)(?P<price>\d+)(?P<other2>.+)',item.find('td',class_="price").get_text())
        try:
            other = match.group("other")
            other2 = match.group("other2")
            price = match.group("price")
        except AttributeError:
            pass
        itag=("/{}".format(test))
        iurl = "https://www.uni-lions.com.tw"+itag
        time.sleep(2)
        iresponse = requests.get(iurl, headers=headers_data)
        isoup = BeautifulSoup(iresponse.text,'lxml')
        iitems = isoup.select('div.detail div.big_photo')
        for item in iitems:
            test=item.find('img').get('src')

        time.sleep(2)
        response = requests.get(url, headers=headers_data)
        soup = BeautifulSoup(response.text,'lxml')
        sites = soup.select('div.page_info > div.arrow_right')
        image="https://www.uni-lions.com.tw/"+test
        product = [
            teamid,
            categoryid,
            productname,
            price,
            image,
        ]
        parsed.append(product)
    # 兄弟
    url = "https://www.3355.com.tw/brothers/category.php?cid=88"
    time.sleep(2)
    bresponse = requests.get(url, headers=headers_data)
    bsoup = BeautifulSoup(bresponse.text,'lxml')
    bitems = bsoup.select('div.pdlist li.item')
    for item in bitems:
        teamid = "4"
        categoryid="2"
        productname = item.find('h3').get_text()
        price = item.find('div',class_="hide").get_text()
        image=item.find('div',class_="img")['data-img']
        product = [
            teamid,
            categoryid,
            productname,
            price,
            image,
        ]
        parsed.append(product)
    
    saveMySql(parsed)
    return render(request,'store/crawler.html')
    
def saveMySql(parsed):
    db = mysql.connect("localhost", "root", "root", 'yamidb')
    with db.cursor() as cursor:
        sql = """INSERT INTO products(teamid,categoryid,productname,price,image) values(%s,%s,%s,%s,%s) """
        cursor.executemany(sql, parsed)
        db.commit()