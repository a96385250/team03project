from django.contrib import admin
from django.urls import path
from . import views
app_name='player'
urlpatterns = [
    path('',views.player,name='index')
]