from django.urls import path
from . import views

app_name = "search"

urlpatterns = [
    #http://localhost:8000/member
    
    path('',views.search,name="search"),
    path('crawl/',views.crawl,name="crawl"),
    path('graph/',views.graph,name="graph"),
    path('crawlRank/',views.crawlRank,name="crawlRank"),
    
]