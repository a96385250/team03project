# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey has `on_delete` set to the desired behavior.
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class Players(models.Model):
    playerid = models.AutoField(primary_key=True)
    playername = models.CharField(max_length=45)
    teamid = models.ForeignKey('Teams', models.DO_NOTHING, db_column='teamid')
    avg = models.DecimalField(max_digits=3, decimal_places=3)
    h = models.IntegerField()
    hr = models.IntegerField()
    era = models.DecimalField(max_digits=5, decimal_places=2)
    w = models.IntegerField()
    sv = models.IntegerField()
    rbi = models.IntegerField()
    sb = models.IntegerField()
    so = models.IntegerField()
    hld = models.IntegerField()
    ab = models.IntegerField()
    ip = models.DecimalField(max_digits=4, decimal_places=1)

    class Meta:
        managed = False
        db_table = 'players'


class Teams(models.Model):
    teamid = models.AutoField(primary_key=True)
    teamname = models.CharField(max_length=45)
    teamname_eng = models.CharField(max_length=45, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'teams'
