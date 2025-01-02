# Generated by Django 5.1.4 on 2024-12-19 09:13

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Posts',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=75)),
                ('body', models.TextField()),
                ('slug', models.SlugField()),
                ('date', models.DateTimeField(auto_now_add=True)),
            ],
        ),
    ]