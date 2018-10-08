from django.contrib import admin
from django.urls import path
from . import views
app_name='admin'
urlpatterns = [
    path('',views.edit,name='edit'),
    path('screate/',views.screate,name='screate'),
    path('sread/',views.sread,name='sread'),
    # path('supdate/<int:articleid>',views.supdate,name='supdate'),
    path('supdate/',views.supdate,name='supdate'),
    path('sdelete/<int:articleid>',views.sdelete,name='sdelete'),
    path('supdate/',views.supdate,name='supdate'),
    path('sdelete/',views.sdelete,name='sdelete'),
    path('playerlist/',views.playerlist,name='playerlist'),
    path('aien0313crte/',views.aien0313crte,name='aien0313crte'),
    path('aien0313upd/<int:id>',views.aien0313upd,name='aien0313upd'),
    path('aien0313del/<int:id>',views.aien0313del,name='aien0313del'),
    path('index/',views.index,name="index"),
    path('create/',views.create,name="create"),
    path('delete/<int:productid>',views.delete,name="delete"),
    path('update/<int:productid>',views.update,name="update"),
    path('searchapi/',views.search,name="searchapi"),
    path('searchstats/',views.stats,name="searchstats"),
]