from django.conf.urls import url
from mainapp import views
from django.urls import path

#template tagging
app_name = 'mainapp'
urlpatterns=[
    url(r'^LogIn/$',views.user_logIn,name='LogInPage'),
    url(r'^SignUp/$',views.signUp,name='SignUpPage'),
    url(r'^Contact/$',views.contact,name='ContactPage'),
    url(r'^viewall/$',views.viewall,name='viewAllPage'),
    path('userselect/',views.userselect,name='userselectPage'),
]
