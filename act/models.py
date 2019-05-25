# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey has `on_delete` set to the desired behavior.
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class Actmember(models.Model):
    actname = models.CharField(max_length=200)
    name = models.CharField(max_length=45)
    password = models.CharField(max_length=45)
    age = models.IntegerField()
    email = models.CharField(max_length=20)

    class Meta:
        managed = False
        db_table = 'actmember'


# class Articles(models.Model):
#     articleid = models.AutoField(primary_key=True)
#     title = models.CharField(max_length=200)
#     url = models.CharField(max_length=200)
#     date = models.CharField(max_length=45, blank=True, null=True)
#     teamid = models.ForeignKey('Teams', models.DO_NOTHING, db_column='teamid', blank=True, null=True)
#     articletype = models.CharField(max_length=45)

#     class Meta:
#         managed = False
#         db_table = 'articles'


# class Events(models.Model):
#     eventid = models.AutoField(primary_key=True)
#     eventname = models.CharField(max_length=45, blank=True, null=True)
#     startdate = models.CharField(max_length=45, blank=True, null=True)
#     enddate = models.CharField(max_length=45, blank=True, null=True)
#     eventdesc = models.CharField(max_length=200, blank=True, null=True)
#     location = models.CharField(max_length=45, blank=True, null=True)
#     geolocation = models.CharField(max_length=45, blank=True, null=True)
#     eventtype = models.CharField(max_length=45, blank=True, null=True)
#     teamid = models.IntegerField(blank=True, null=True)
#     memberid = models.IntegerField(blank=True, null=True)

    # class Meta:
    #     managed = False
    #     db_table = 'events'


class Location(models.Model):
    idlocation = models.AutoField(primary_key=True)
    location_name = models.CharField(max_length=45, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'location'


# class MemberEvent(models.Model):
#     memberid = models.ForeignKey('Members', models.DO_NOTHING, db_column='memberid', primary_key=True)
#     eventid = models.ForeignKey(Events, models.DO_NOTHING, db_column='eventid')

#     class Meta:
#         managed = False
#         db_table = 'member_event'
#         unique_together = (('memberid', 'eventid'),)


# class Members(models.Model):
#     memberid = models.AutoField(primary_key=True)
#     membername = models.CharField(max_length=45)
#     username = models.CharField(max_length=45)
#     password = models.CharField(max_length=45)
#     email = models.CharField(max_length=45)
#     gender = models.CharField(max_length=1, blank=True, null=True)
#     teamid = models.ForeignKey('Teams', models.DO_NOTHING, db_column='teamid')
#     address = models.CharField(max_length=200, blank=True, null=True)
#     phoneno = models.CharField(max_length=45)
#     newsletter = models.CharField(max_length=45, blank=True, null=True)
#     level = models.IntegerField()

    # class Meta:
    #     managed = False
    #     db_table = 'members'


# class Players(models.Model):
#     playerid = models.AutoField(primary_key=True)
#     playername = models.CharField(max_length=45)
#     teamid = models.ForeignKey('Teams', models.DO_NOTHING, db_column='teamid')
#     avg = models.DecimalField(max_digits=3, decimal_places=0)
#     h = models.IntegerField()
#     hr = models.IntegerField()
#     era = models.DecimalField(max_digits=3, decimal_places=0)
#     w = models.IntegerField()
#     sv = models.IntegerField()
#     rbi = models.IntegerField()
#     sb = models.IntegerField()
#     so = models.IntegerField()

#     class Meta:
#         managed = False
#         db_table = 'players'


# class (models.Model):
#     categoryid = models.AutoField(primary_key=True)
#     categoryname = models.CharField(max_length=45)

#     class Meta:
#         managed = False
#         db_table = ''


# class Products(models.Model):
#     productid = models.AutoField(primary_key=True)
#     productname = models.CharField(max_length=55)
#     productdesc = models.CharField(max_length=200, blank=True, null=True)
#     price = models.IntegerField()
#     image = models.CharField(max_length=200, blank=True, null=True)
#     categoryid = models.ForeignKey(, models.DO_NOTHING, db_column='categoryid')
#     teamid = models.ForeignKey('Teams', models.DO_NOTHING, db_column='teamid')

#     class Meta:
#         managed = False
#         db_table = 'products'


# class Scores(models.Model):
#     scoreid = models.AutoField(primary_key=True)
#     year = models.CharField(max_length=45)
#     teamid = models.ForeignKey('Teams', models.DO_NOTHING, db_column='teamid')
#     wins = models.IntegerField()
#     loss = models.IntegerField()

#     class Meta:
#         managed = False
#         db_table = 'scores'


# class Teams(models.Model):
#     teamid = models.AutoField(primary_key=True)
#     teamname = models.CharField(max_length=45)
#     teamname_eng = models.CharField(max_length=45, blank=True, null=True)

#     class Meta:
#         managed = False
#         db_table = 'teams'
