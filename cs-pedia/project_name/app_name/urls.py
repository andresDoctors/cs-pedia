from django.urls import path
from . import views

urlpatterns = [
    path('', views.minimo_vital, name='minimo_vital'),
]
