from django.db import connection

class Member:

    def single(self, productid):
        with connection.cursor() as cursor:
            sql = """select * from products where id=%s"""
            #tuple
            cursor.execute(sql,(id,))
            product = cursor.fetchone()
        return product

            
    def update(self, product):
        with connection.cursor() as cursor:
            sql = """update products set name=%s,email=%s,password=%s,age=%s
                     where id=%s"""
            cursor.execute(sql, product)

    def delete(self, productid):
        with connection.cursor() as cursor:
            sql = """delete from products where productid=%s"""
            cursor.execute(sql,(productid,))