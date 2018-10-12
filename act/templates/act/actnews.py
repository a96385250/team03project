import requests
from bs4 import BeautifulSoup
import time
import re
# import pymongo
import pymysql
import csv
# from .models import Location
# from django.db import connection

time.sleep(2)
url = "https://www.uni-lions.com.tw/news.aspx"
url1 = "https://www.uni-lions.com.tw/news.aspx?page=2"
headers_data = {
    'user-agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'
}
response = requests.get(url, headers=headers_data)
response1 = requests.get(url1, headers=headers_data)
soup = BeautifulSoup(response.text,'lxml')
soup1 = BeautifulSoup(response1.text,'lxml')
# print(soup.prettify())
items = soup.select('div.news_info div.news')
items1 = soup1.select('div.news_info div.news')

#連到mongodb資料庫
# client = pymongo.MongoClient()
# db = client.appledb
# newscollection = db.realtimenews

for item in items:
    # image = item.find('img').get('src')
    # time = item.find('div',class_="daytime")
    title = item.find('span',class_='gray_t18').string
    
    
    
    # time = item.find('time').string
    # category = item.find('h2').string
    # title = item.find('h1').get_text()
    # link = item.find('a').get('href')
    
    # match = re.search(r'(?P<title>.+)\((?P<count>\d+)\)',item.find('h1').get_text())
    # count = 0
    # try:
    #     title = match.group("title")
    #     count = match.group("count")
    # except AttributeError:
    #     pass
        
    print(title)
    # print(count)
    # print(image)
    # print(time)
    # print(title)
    # print("===============")

    #newscollection
    #將即時新聞寫進mongodb
    # news = {}
    # news['title'] = title
    # news['count'] = count
    # news['link'] = link
    # news['category'] = category
    # news['time'] = time
    # newscollection.insert_one(news)
# tt = []
# for t in title:
#     tt.append(t)
for item1 in items:
    title1 = item1.find('span',class_='gray_t18').string
    print(title1)

#     # with open('apple.csv', 'a', newline='', encoding="utf-8") as csvfile:
#     #     writer = csv.writer(csvfile, delimiter=",")
#     #     writer.writerow([title,count,link,category,time])
# conn = pymysql.connect(                   #資料庫內容請根據自己的資料庫自行設定
# host='localhost',
# user='root',
# passwd='root',
# database='yamidb',
# charset='utf8',)                          #讓資料庫能存取中文

# with conn.cursor() as cursor:
#     sql = "insert into location(location_name) values(%s)"
#     cursor.execute(sql, Location)
# cur = conn.cursor()
# # cur.execute('INSERT INTO `location` (`location_name`)values("%s")')

# conn.commit()  
# conn.close()                              #記得要關閉連線