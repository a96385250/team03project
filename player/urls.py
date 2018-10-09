from django.contrib import admin
from django.urls import path,include
from . import views
app_name="player"
urlpatterns = [
    path("",views.player,name="index"),
    path("catch",views.catch,name="catch"),
    path("rankingdata",views.rankingdata,name="rankingdata"),
    path("ranking",views.ranking,name="ranking"),
    path("restapi",views.restapi,name="restapi")
]