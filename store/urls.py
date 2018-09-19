from django.urls import path
from . import views

app_name = "store"

urlpatterns = [
    #http://localhost:8000/member
    
    path('',views.store,name="store"),
    path('index/',views.index,name="index"),
    path('create/',views.create,name="create"),
    path('delete/<int:productid>',views.delete,name="delete"),
    path('update/<int:productid>', views.update, name="update"),
]