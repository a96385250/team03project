from django.contrib import admin
from django.urls import path
from . import views
app_name='admin'
urlpatterns = [
    path('',views.edit,name='edit'),
    path('screate/',views.screate,name='screate'),
    path('sread/',views.sread,name='sread'),
    path('supdate/',views.supdate,name='supdate'),
    path('sdelete/',views.sdelete,name='sdelete'),
]