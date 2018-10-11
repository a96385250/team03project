# # This is an auto-generated Django model module.
# # You'll have to do the following manually to clean this up:
# #   * Rearrange models' order
# #   * Make sure each model has one field with primary_key=True
# #   * Make sure each ForeignKey has `on_delete` set to the desired behavior.
# #   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# # Feel free to rename the models, but don't rename db_table values or field names.
# from django.db import models


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
#     level = models.IntegerField(blank=True, null=True)

#     class Meta:
#         managed = False
#         db_table = 'Members'

# class Teams(models.Model):
#     teamid = models.AutoField(primary_key=True)
#     teamname = models.CharField(max_length=45)
#     teamname_eng = models.CharField(max_length=45, blank=True, null=True)

#     class Meta:
#         managed = False
#         db_table = 'teams'
