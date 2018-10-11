from django.shortcuts import render
import requests
from bs4 import BeautifulSoup
import re
import json
import time
import urllib.parse as UP
import pymysql as mysql
from django.http import HttpResponse
from django.core import serializers
from django.db import connection
from search.models import Articles
from django.db.models import Count
def search(request):
    render(request,'index.html')


def crawler(url):
    time.sleep(2) #to be less suspicious 
    # url = "http://www.cpbl.com.tw/news/lists.html"
    home = "http://www.cpbl.com.tw/"
    headers_data = {
        'user-agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'
    }
    response = requests.get(url, headers=headers_data)
    articles = BeautifulSoup(response.text,'lxml')

    items = articles.select('div.news_row')
    items.pop(1)
    parsed = []
    for item in items:
        print("crawling:" + url )
        dtpattern=r'(?P<year>\d{4}).(?P<month>\d{2}).(?P<day>\d{2})'
        data = item.find(class_= "news_row_date").getText()
        d = re.search(dtpattern,data)
        date = d.group('year') + "/" + d.group('month') + "/" + d.group('day')
        title = item.find(class_= "news_row_title",).getText()
        team = 0
        counter = 0
        upperTitle = title.upper()
        if "桃猿" in title or "LAMIGO" in upperTitle:
            team = 1
            counter += 1
        if "統一獅" in title or "統一" in title or "UNILIONS" in upperTitle:
            team = 2
            counter += 1
        if "富邦" in title or "悍將" in title or "FUBON" in upperTitle or "GUARDIANS" in upperTitle:
            team = 3
            counter += 1
        if "中信" in title or "兄弟" in title or "BROTHERS" in upperTitle:
            team = 4
            counter += 1
        if "中華職棒" in title or "CPBL" in upperTitle or counter >= 2:
            team = 5
        if counter >= 2 or team == 0:
            team = 5
        links = item.find_all("a", href=True)
        links = item.find_all("img", src=True)
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
            team,
            title,
            "http://www.cpbl.com.tw/" + item.find_all("a", href=True)[0]["href"],
            item.find_all("img", src=True)[0]["src"],
            date,
            item.find(class_= "news_row_summary").find(text=True, recursive=False),
            0
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
    

def crawl(request):
    db = mysql.connect("localhost", "root", "root", 'yamidb')
    with db.cursor() as cursor:
        sql = """DELETE FROM articles """
        # cursor.execute(sql, )
        cursor.execute(sql)
        db.commit()
        print("clearing....")
    for i in range(15):
        if(i == 0): 
            crawler("http://www.cpbl.com.tw/news/lists.html")
        else:
            crawler("http://www.cpbl.com.tw/news/lists/news_lits.html?year=0&month=0&search=&tag=&per_page={}".format(i))
    
def saveMySql(parsed):
    print("saving.......")
    print(parsed)
    db = mysql.connect("localhost", "root", "root", 'yamidb')
    with db.cursor() as cursor:
        sql = """INSERT INTO articles(teamid,title,url,imgurl,date, summary,count) values(%s,%s,%s,%s,%s,%s,%s) """
        # cu7rsor.execute(sql, )
        cursor.executemany(sql, parsed)
        db.commit()
    print("....done")

def graph(request):
    if request.method =="GET":
        print("in get")
        data = ""
        print("inside")
        type = request.GET["type"]
        obj = {}
        if type == "article":
            # fetched = Articles.objects.filter(date__isnull = False).only('date').annotate(dcount=Count('date'))
            results = Articles.objects.values('date').annotate(dcount=Count('date'))
            obj["labels"] = []
            obj["data"] = []
            obj["title"] = "Count of Articles Per Day"
            obj["axislabel"] = "# of articles"
            for row in results:
                obj["labels"].append(row["date"])
                obj["data"].append(row["dcount"])
            # print(fetched.query)
            # print(fetched)
        elif type == "pop":
            with connection.cursor() as cursor:
                sql = """SELECT title, count from articles where count > 0"""
                cursor.execute(sql)
                results = cursor.fetchall()
                print(results)
                obj["labels"] = []
                obj["data"] = []
                obj["title"] = "Clicks count"
                obj["axislabel"] = "# clicks per article"
                for row in cursor:
                    obj["labels"].append(row[0])
                    obj["data"].append(row[1])
        elif type =="team":
            with connection.cursor() as cursor:
                sql = """SELECT t.teamname, count(t.teamname) as count from articles a join teams t on t.teamid = a.teamid group by t.teamname"""
                cursor.execute(sql)
                results = cursor.fetchall()
                print(results)
                obj["labels"] = []
                obj["data"] = []
                obj["title"] = "Articles per Team"
                obj["axislabel"] = "# of articles"
                for row in cursor:
                    obj["labels"].append(row[0])
                    obj["data"].append(row[1])
        data = json.dumps(obj)
        return HttpResponse(data, content_type='application/json')
    # return 