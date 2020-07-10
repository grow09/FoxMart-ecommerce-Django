from django.urls import path
from . import views
from .views import prod_card, product_page, filtered, search, ProdView, ProdViewSimple
from .models import *

urlpatterns = [
    path('', views.index, name='index'),
    path('category/<category_slug>', prod_card, name='category'),
    path('search', search, name='search'),
    path('filtered/', filtered, name='filtered'),
    path('products/<product_slug>', product_page, name='products'),
    path('api/<int:pk>/', ProdView.as_view()), ## API table products
    path('api_v1/', ProdViewSimple.as_view()), ## Simple Api (products)
]
