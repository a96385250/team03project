from django.db import connection

class playersdb:
    def read(self):
        with connection.cursor() as cursor:
            sql = "SELECT teamid,playername,avg from players where ab >345 ORDER BY avg DESC LIMIT 5"
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