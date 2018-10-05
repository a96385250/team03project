from django.urls import path
from . import views
app_name='signin'
urlpatterns = [
    path('',views.signin,name='signin'),
    path('registered/',views.registered,name='registered'),
    path('captcha/',views.captcha,name='captcha'),
    path('revise/',views.revise,name='revise'), 
    path('delete/',views.delete,name='delete'),
]