# team03project

必須安裝的套件：<br>
1.Django==2.1.1 <br>
3.mysqlclient==1.3.13 <br>
2.beautifulsoup4==4.6.3 <br>

連資料庫DB MySql設定: <br>
team3project/settings.py <br>
DATABASES = { <br>
    'default': { <br>
        # 'ENGINE': 'django.db.backends.sqlite3', <br>
        # 'NAME': os.path.join(BASE_DIR, 'db.sqlite3'), <br>
        'ENGINE': 'django.db.backends.mysql', <br>
        'NAME':'yamidb', <br>
        'USER':'root', <br>
        'PASSWORD':'XXXXXXX',  <=======設定密碼 <br>
        'HOST':'localhost' <br>
    } <br>
} <br>
