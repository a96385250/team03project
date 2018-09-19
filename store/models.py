from django.db import models


class Category(models.Model):
    categoryid = models.AutoField(primary_key=True)
    categoryname = models.CharField(max_length=45)

    class Meta:
        db_table = "categories"

class Product(models.Model):
    productid = models.AutoField(primary_key=True)
    categoryid = models.ForeignKey(Category,models.DO_NOTHING,db_column='categoryid')
    modelname = models.CharField(max_length=45)
    productimage = models.CharField(max_length=45)
    unitcost = models.IntegerField()
    description = models.CharField(max_length=300)

    class Meta:
        db_table = "products"