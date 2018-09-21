from django.db import connection

class Member:

    def single(self, productid):
        with connection.cursor() as cursor:
            sql = """select * from products where id=%s"""
            #tuple
            cursor.execute(sql,(productid,))
            product = cursor.fetchone()
        return product

    def delete(self, productid):
        with connection.cursor() as cursor:
            sql = """delete from products where productid=%s"""
            cursor.execute(sql,(productid,))