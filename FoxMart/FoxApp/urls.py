from django.urls import path
from . import views
from .views import prod_card, product_page, filtered
from .models import *

urlpatterns = [
    path('', views.index, name='index'),
    path('category/<category_slug>', prod_card, name='category'),
    path('filtered/', filtered, name='filtered'),
    path('products/<product_slug>', product_page, name='products'),
]
