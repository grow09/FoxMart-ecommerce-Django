# Generated by Django 3.0.4 on 2020-05-12 19:22

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('FoxApp', '0002_category_img'),
    ]

    operations = [
        migrations.AddField(
            model_name='products',
            name='cpu_serial',
            field=models.CharField(blank=True, max_length=100),
        ),
    ]
