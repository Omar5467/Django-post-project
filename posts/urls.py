from django.urls import path
from . import views

app_name = 'posts'

urlpatterns = [
    
    path('',views.post_list, name='post_list'),
    path('new_post/',views.new_post, name='new_post'),
    path('<slug:slug>',views.post_page, name='post_page'),

]
