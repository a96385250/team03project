from django.db import connection

class playersdb:
    def read(self,sqlcode):
        with connection.cursor() as cursor:
            sql = sqlcode
            cursor.execute(sql)
            playerread =  cursor.fetchall()
        return playerread


    def create(self,players):
        with connection.cursor() as cursor:
            sql = "insert into players(playername,teamid,avg,h,hr,era,w,sv,rbi,sb,so,hld,ab,ip) values(%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)"
            cursor.execute(sql, players)

    def delete(self):
        with connection.cursor() as cursor:
            sql = "delete from players"
            cursor.execute(sql)