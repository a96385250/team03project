from django.contrib import admin
from django.urls import path
from . import views
app_name='admin'
urlpatterns = [
    path('',views.edit,name='edit'),
    path('screate/',views.screate,name='screate'),
    path('sread/',views.sread,name='sread'),
    path('supdate/<int:articleid>',views.supdate,name='supdate'),
    path('sdelete/<int:articleid>',views.sdelete,name='sdelete'),
]