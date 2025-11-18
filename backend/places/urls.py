from django.urls import path
from .views import PlaceListCreate

urlpatterns = [
    path('', PlaceListCreate.as_view()),
]
