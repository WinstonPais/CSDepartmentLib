from django.db import models
from django.contrib.auth.models import User
# Create your models here.

class UserProfileInfo(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    phone = models.CharField(max_length=10)
    semester = models.CharField(max_length=1, null=True)
    # isLibrarian = models.CharField(max_length=1)

    def __str__(self):
        # Built-in attribute of django.contrib.auth.models.User !
        return self.user.username

class LibraryAllBooks(models.Model):
    AccesssionNumber = models.IntegerField(primary_key=True)
    Title = models.TextField()
    Author = models.TextField()
    Availability = models.TextField(blank=True)

    def __str__(self):
        # Built-in attribute of django.contrib.auth.models.User !
        return str(self.AccesssionNumber)+" "+str(self.Title)
