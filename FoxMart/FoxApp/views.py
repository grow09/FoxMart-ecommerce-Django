from django.shortcuts import render
from django.http import HttpResponse, JsonResponse
from .models import Contributor, Products, Category
from .models import Category as CategoryModel
from django.db.models import F, Q
from django.db.models import Avg, Count, Max, Min
# Create your views here.


def index(request):
    contributor = Contributor.objects.all()
    products = Products.objects.all()
    category = CategoryModel.objects.all()
    context = {
        'Contributor': contributor,
        'Products': products,
        'Categories': category
    }
    return render(request, "index.html", context)


def prod_card(request, category_slug):
    contributor = Contributor.objects.all()
    products = Products.objects.all()
    category = CategoryModel.objects.filter(slug=category_slug)
    cat = (str(request).split('/')[2].split("'")[0])
    makers = Contributor.objects.filter(category__slug=category_slug).values_list('maker', flat=True).distinct()
    videocard = Products.objects.filter(category__slug=category_slug).values_list('videocard', flat=True).distinct()
    ram = Products.objects.filter(category__slug=category_slug).values_list('ram', flat=True).distinct()
    cpu_serial = Products.objects.filter(category__slug=cat).values_list('cpu_serial', flat=True).distinct()
    diagonal = Products.objects.filter(category__slug=cat).values_list('diagonal', flat=True).distinct()
    context = {
        'Contributor': contributor,
        'Products': products,
        'Categories': category,
        'cat': cat,
        'Makers': makers,
        'Ram': ram,
        'Videocard': videocard,
        'Cpu_serial': cpu_serial,
        'Diagonal': diagonal,
    }
    return render(request, "prod-card.html", context)


def product_page(request, product_slug):
    contributor = Contributor.objects.filter(model=product_slug)
    products = Products.objects.all()
    category = CategoryModel.objects.all()
    context = {
        'Contributor': contributor,
        'Products': products,
        'Categories': category,
    }
    return render(request, "product_page.html", context)


def filtered(request):
    cat = request.GET.get("category")
    contributor = Contributor.objects.all()
    category = CategoryModel.objects.filter(pk=cat)
    makers = Contributor.objects.filter(category__pk=cat).values_list('maker', flat=True).distinct()
    videocard = Products.objects.filter(category__pk=cat).values_list('videocard', flat=True).distinct()
    diagonal = Products.objects.filter(category__pk=cat).values_list('diagonal', flat=True).distinct()
    ram = Products.objects.filter(category__pk=cat).values_list('ram', flat=True).distinct()
    cpu_serial = Products.objects.filter(category__pk=cat).values_list('cpu_serial', flat=True).distinct()
    # checkbox ram
    if request.GET.getlist("ram") != []:
        ram1 = request.GET.getlist('ram')
    else:
        ram1 = ram
    # checkbox cpu
    if request.GET.getlist("cpu") != []:
        cpu_serial1 = request.GET.getlist('cpu')
    else:
        cpu_serial1 = cpu_serial
    # checkbox videocard
    if request.GET.getlist("videocard") != []:
        videocard1 = request.GET.getlist('videocard')
    else:
        videocard1 = videocard
    # checkbox diagonal
    if request.GET.getlist("diagonal") != []:
        diagonal1 = request.GET.getlist('diagonal')
    else:
        diagonal1 = diagonal
    # ---------------------------
    product = Products.objects.filter(
        Q(ram__in=ram1),
        Q(cpu_serial__in=cpu_serial1),
        Q(videocard__in=videocard1),
        Q(diagonal__in=diagonal1)
    )
    print(ram1)
    print(cpu_serial1)
    print(diagonal1)
    print(Products.objects.filter(ram__in=[3]))
    context = {
        'Contributor': contributor,
        'Products': product,
        'Categories': category,
        'cat': cat,
        'Makers': makers,
        'Ram': ram,
        'Videocard': videocard,
        'Cpu_serial': cpu_serial,
        'Diagonal': diagonal,
    }
    return render(request, "prod-card.html", context)

    # contributor = Contributor.objects.all()
    # products = Products.objects.filter(
    #     Q(ram__in=request.GET.getlist("ram")) | Q(cpu_serial__in=request.GET.getlist("cpu"))
    # )
    # category = CategoryModel.objects.filter(slug=cat)
    # cat = (str(request).split('/')[2].split("'")[0]).split('?')[0]
    # makers = Contributor.objects.filter(category__slug=cat).values_list('maker', flat=True).distinct()
    # videocard = Products.objects.filter(category__slug=cat).values_list('videocard', flat=True).distinct()
    # ram = Products.objects.filter(category__slug=cat).values_list('ram', flat=True).distinct()
    # cpu_serial = Products.objects.filter(category__slug=cat).values_list('cpu_serial', flat=True).distinct()
    # print('asf')
    # print(cpu_serial)
    # context = {
    #     'Contributor': contributor,
    #     'Products': products,
    #     'Categories': category,
    #     'cat': cat,
    #     'Makers': makers,
    #     'Ram': ram,
    #     'Videocard': videocard,
    #     'Cpu_serial': cpu_serial,
    # }


