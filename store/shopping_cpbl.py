import requests
from bs4 import BeautifulSoup
import time
import re
import pymysql
import csv

# # 統一
# tag="/store.aspx?type=ALL&page=1"
# while tag:
#     url = "https://www.uni-lions.com.tw"+tag
#     time.sleep(2)
#     headers_data = {
#         'user-agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'
#     }
#     response = requests.get(url, headers=headers_data)
#     soup = BeautifulSoup(response.text,'lxml')
#     items = soup.select('div.info > div.item')
#     sites = soup.select('div.page_info > div.arrow_right')
#     for item in items:
#         category = "統一獅"
#         productname = item.find('td',class_="title").get_text()
#         test = item.find('a').get('href')
#         match = re.search(r'(?P<other>\D+)(?P<price>\d+)(?P<other2>.+)',item.find('td',class_="price").get_text())
#         try:
#             other = match.group("other")
#             other2 = match.group("other2")
#             price = match.group("price")
#         except AttributeError:
#             pass
        
#         itag=("/{}".format(test))
#         iurl = "https://www.uni-lions.com.tw"+itag
#         time.sleep(2)
#         iresponse = requests.get(iurl, headers=headers_data)
#         isoup = BeautifulSoup(iresponse.text,'lxml')
#         iitems = isoup.select('div.detail div.big_photo')
#         for item in iitems:
#             image=item.find('img').get('src')

#         time.sleep(2)
#         response = requests.get(url, headers=headers_data)
#         soup = BeautifulSoup(response.text,'lxml')
#         sites = soup.select('div.page_info > div.arrow_right')
#         print(productname)
#         print(category)
#         print(price)
#         print("https://www.uni-lions.com.tw/{}".format(image))
#         print("===============")
#     if sites:
#         for site in sites:
#             tag = site.find('a').get("href")
#     else:
#         break

# # 兄弟(ajax)
# url = "https://www.3355.com.tw/brothers/category.php?cid=73"
# time.sleep(2)
# headers_data = {
#     'user-agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'
# }
# response = requests.get(url, headers=headers_data)
# soup = BeautifulSoup(response.text,'lxml')
# items = soup.select('div.pdlist li.item')
# for item in items:
#     category = "中信兄弟"
#     productname = item.find('h3').get_text()
#     price = item.find('div',class_="hide").get_text()
#     image=item.find('div',class_="img")['data-img']

#     print(productname)
#     print(category)
#     print(price)
#     print(image)
#     print("===============")

# # 富邦悍將(在javascript裡)
# tag=1
# while tag < 5:
#     url = "https://www.momoshop.com.tw/category/DgrpCategory.jsp?d_code=2141100035&p_orderType=1&p_pageNum="+tag
#     time.sleep(2)
#     headers_data = {
#         'user-agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'
#     }
#     response = requests.get(url, headers=headers_data)
#     soup = BeautifulSoup(response.text,'lxml')
#     tag=tag+1
#     items = soup.select('div.prdListArea bt770class li.eachGood')
#     for item in items:
#         category = "富邦悍將"

# 桃猿(都不行)
# tag=1
# while tag < 8:
#     url = "http://www.lamigo-monkeys.com.tw/c1.php?topage="+tag
#     time.sleep(2)
#     headers_data = {
#         'user-agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'
#     }
#     response = requests.get(url, headers=headers_data)
#     soup = BeautifulSoup(response.text,'lxml')
#     tag=tag+1
#     items = soup.select('table.block_notes table.selectlinks')
#     for item in items:
#         category = "桃猿"