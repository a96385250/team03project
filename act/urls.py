from django.contrib import admin
from django.urls import path
from . import views
app_name='act'
urlpatterns = [
    path('',views.maincheck,name='index'),
    path('act/',views.actcheck,name='act'),
    path('act/',views.create,name="create"),
    path('print/',views.index,name="index"),
    path('delete/<int:id>',views.delete,name="delete"),
    path('update/<int:id>', views.update, name="update"),
    path('crawler/',views.crawler,name="crawler"),
    # path("catchfrom",views.catchfrom,name="catchfrom"),
]