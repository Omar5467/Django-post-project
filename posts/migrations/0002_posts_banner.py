# Generated by Django 5.1.4 on 2024-12-22 06:33

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('posts', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='posts',
            name='banner',
            field=models.ImageField(blank=True, default='banner.png', upload_to=''),
        ),
    ]
