from django.conf.urls import url
from mainapp import views
from django.urls import path
from django.contrib.auth.views import PasswordResetView,PasswordResetDoneView,PasswordResetConfirmView,PasswordResetCompleteView

#template tagging
app_name = 'mainapp'
urlpatterns=[
    url(r'^LogIn/$',views.user_logIn,name='LogInPage'),
    url(r'^SignUp/$',views.signUp,name='SignUpPage'),
    url(r'^Contact/$',views.contact,name='ContactPage'),
    url(r'^viewall/$',views.viewall,name='viewAllPage'),
    path('userselect/',views.userselect,name='userselectPage'),
    path('reserve/<int:pk>/',views.reserve,name='reservebook'),
    url(r'^mybooks/$',views.mybooks,name='mybooksPage'),
    path('delete/<int:pk>/', views.dele, name='delPage'),
    path('reset-password', PasswordResetView.as_view(), name='reset-password'),
    path('reset-password/done', PasswordResetDoneView.as_view(), name='password_reset_done'),
    path('reset-password/confirm/<uidb64>/<token>/',PasswordResetConfirmView.as_view(), name='password_reset_confirm'),
    path('reset-password/complete/', PasswordResetCompleteView.as_view(), name='password_reset_complete'),
    path('activate/<uidb64>/<token>', views.activate, name='activate'),
]
