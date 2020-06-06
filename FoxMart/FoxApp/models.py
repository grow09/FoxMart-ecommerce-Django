from django.db import models
from django.urls import reverse
from django.utils.text import slugify

# Create your models here.


class Category(models.Model):
    name = models.CharField(max_length=200)
    slug = models.SlugField(blank=True)
    img = models.ImageField(upload_to='./static/Resource')

    def __str__(self):
        return self.name

    def get_absolute_url(self):
        return reverse('category', kwargs={'category_slug': self.slug})


class Contributor(models.Model):
    category = models.ForeignKey(Category, on_delete=models.CASCADE)
    maker = models.CharField(max_length=100)
    model = models.CharField(max_length=200)
    is_active = models.BooleanField
    link_itbox = models.CharField(max_length=250)
    link_rozetka = models.CharField(max_length=250)
    link_citrus = models.CharField(max_length=250)
    link_allo = models.CharField(max_length=250)
    link_stylus = models.CharField(max_length=250)
    img1 = models.CharField(max_length=250)
    img2 = models.CharField(max_length=250)
    img3 = models.CharField(max_length=250)

    def __str__(self):
        return self.model

    def get_absolute_url(self):
        return reverse('products', kwargs={'product_slug': self.model})


class Products(models.Model):
    category = models.ForeignKey(Category, on_delete=models.CASCADE)
    model = models.ForeignKey(Contributor, on_delete=models.CASCADE)
    cpu = models.CharField(max_length=100, blank=True)
    cpu_serial = models.CharField(max_length=100, blank=True)
    speed = models.FloatField(max_length=25, blank=True)
    videocard = models.CharField(max_length=100, blank=True)
    ram_type = models.CharField(max_length=100, blank=True)
    ram = models.IntegerField(blank=True)
    hd_type = models.CharField(max_length=100, blank=True)
    hd = models.IntegerField(blank=True)
    diagonal = models.FloatField(max_length=25, blank=True)
    main_cam = models.IntegerField(blank=True)
    back_cam = models.CharField(max_length=100, blank=True)
    front_cam = models.CharField(max_length=100, blank=True)
    color = models.CharField(max_length=100, blank=True)
    os = models.CharField(max_length=100, blank=True)
    price_itbox = models.IntegerField(blank=True)
    price_rozetka = models.IntegerField(blank=True)
    price_citrus = models.IntegerField(blank=True)
    price_allo = models.IntegerField(blank=True)
    price_stylus = models.IntegerField(blank=True)
    itbox_com_count = models.IntegerField(blank=True)
    rozetka_com_count = models.IntegerField(blank=True)
    citrus_com_count = models.IntegerField(blank=True)
    allo_com_count = models.IntegerField(blank=True)
    stylus_com_count = models.IntegerField(blank=True)

    def __int__(self):
        return self.model

    def get_absolute_url(self):
        return reverse('products', kwargs={'product_slug': self.model})


    def minimal(self):
        prices = [self.price_itbox, self.price_rozetka, self.price_citrus, self.price_allo, self.price_stylus]
        prices = [x for x in prices if x != 0]
        return min(prices)

    def maximal(self):
        prices = [self.price_itbox, self.price_rozetka, self.price_citrus, self.price_allo, self.price_stylus]
        return max(prices)

