# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey has `on_delete` set to the desired behavior.
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class Articles(models.Model):
    articleid = models.AutoField(primary_key=True)
    title = models.CharField(max_length=200)
    url = models.CharField(max_length=200)
    date = models.CharField(max_length=45, blank=True, null=True)
    teamid = models.ForeignKey('Teams', models.DO_NOTHING, db_column='teamid', blank=True, null=True)
    articletype = models.CharField(max_length=45)

    class Meta:
        db_table = 'articles'


class Teams(models.Model):
    teamid = models.AutoField(primary_key=True)
    teamname = models.CharField(max_length=45)
    teamname_eng = models.CharField(max_length=45, blank=True, null=True)

    class Meta:
        db_table = 'teams'
