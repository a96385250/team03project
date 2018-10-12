from django.urls import path
from . import views

app_name = "store"

urlpatterns = [
    path('',views.store,name="store"),
    path('category/<int:teamid>',views.category,name="category"),
    path('crawler/',views.crawler,name="crawler"),
]