import requests
from bs4 import BeautifulSoup
import time
import re
import pymysql
import csv

# 兄弟
url = "https://www.3355.com.tw/brothers/category.php?cid=88"
time.sleep(2)
headers_data = {
    'user-agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'
}
response = requests.get(url, headers=headers_data)
soup = BeautifulSoup(response.text,'lxml')
items = soup.select('div.pdlist li.item')
for item in items:
    teamid = "4"
    categoryid="2"
    productname = item.find('h3').get_text()
    price = item.find('div',class_="hide").get_text()
    image=item.find('div',class_="img")['data-img']
    print(image)

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
