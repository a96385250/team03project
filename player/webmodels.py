from django.db import connection

class playersdb:
    def read(self):
        with connection.cursor() as cursor:
            sql = "select playername from players"
            cursor.execute(sql)
            playerread =  cursor.fetchall()
        return playerread

    def create(self,players):
        with connection.cursor() as cursor:
            sql = "insert into players(playername,teamid,avg,h,hr,era,w,sv,rbi,sb,so) values(%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)"
            cursor.execute(sql, players)

    def delete(self):
        with connection.cursor() as cursor:
            sql = "delete from players"
            cursor.execute(sql)