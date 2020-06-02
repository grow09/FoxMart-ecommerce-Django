from django.contrib import admin

# Register your models here.
from .models import Category, Contributor, Products


admin.site.register(Category)
admin.site.register(Contributor)
admin.site.register(Products)
