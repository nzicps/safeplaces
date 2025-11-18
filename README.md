# ??? SafePlaces

A Flutter + Django app for marking safe and unsafe places on a map.

## ?? Features
- Safe/Unsafe location markers
- Django REST API backend
- Flutter Google Maps interface

## ?? Project Structure
- backend/ ? Django API
- flutter_app/ ? Flutter mobile app
- docs/ ? project documentation

## ?? Run Flutter App
flutter pub get
flutter run

## ?? Run Django Backend
pip install django djangorestframework
cd backend
python manage.py migrate
python manage.py runserver

## ?? API Endpoint
GET http://127.0.0.1:8000/api/places/
