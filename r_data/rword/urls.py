from django.urls import path
from . import views

app_name = 'rword'
urlpatterns = [
    path('', views.rwordpage, name='rwordpage'),
    path('randomword', views.getrandomword),
    #word
]