from django.contrib import admin
from django.urls import path,include
from . import views
app_name="player"
urlpatterns = [
    path("",views.player,name="index"),
    path("catch",views.catch,name="catch"),
    path("rankingavg",views.rankingavg,name="rankingavg"),
    path("rankingh",views.rankingh,name="rankingh"),
    path("rankinghr",views.rankinghr,name="rankinghr"),
    path("rankingera",views.rankingera,name="rankingera"),
    path("rankingw",views.rankingw,name="rankingw"),
    path("rankingsv",views.rankingsv,name="rankingsv"),
    path("rankingrbi",views.rankingrbi,name="rankingrbi"),
    path("rankingsb",views.rankingsb,name="rankingsb"),
    path("rankingso",views.rankingso,name="rankingso"),
    path("rankinghld",views.rankinghld,name="rankinghld"),
    path("ranking",views.ranking,name="ranking"),
    path("chartavg",views.chartavg,name="chartavg"),
    path("charth",views.charth,name="charth"),
    path("charthr",views.charthr,name="charthr"),
    path("chartera",views.chartera,name="chartera"),
    path("chartw",views.chartw,name="chartw"),
    path("chartsv",views.chartsv,name="chartsv"),
    path("chartrbi",views.chartrbi,name="chartrbi"),
    path("chartsb",views.chartsb,name="chartsb"),
    path("chartso",views.chartso,name="chartso"),
    path("charthld",views.charthld,name="charthld"),
    path("restapi",views.restapi,name="restapi")
]