from django.conf.urls import url
from mainapp import views

#template tagging
app_name = 'mainapp'
urlpatterns=[
    url(r'^LogIn/$',views.logIn,name='LogInPage'),
    url(r'^SignUp/$',views.signUp,name='SignUpPage'),
]
