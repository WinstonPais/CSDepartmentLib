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

class Bookavail(models.Model):
    bk=models.TextField(primary_key=True)

    def __str__(self):
        return str(self.bk)

class bkstat(models.Model):
    bkst=models.TextField(primary_key=True)

    def __str__(self):
        return str(self.bkst)

class LibraryAllBooks(models.Model):
    AccesssionNumber = models.IntegerField(primary_key=True)
    Title = models.TextField()
    Author = models.TextField()
    Availability = models.ForeignKey(Bookavail,on_delete=models.SET("nan"))
    # Availability = models.TextField(blank=True)

    def __str__(self):
        # Built-in attribute of django.contrib.auth.models.User !
        return str(self.AccesssionNumber)+" "+str(self.Title)


class BooksLent(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    AccesssionNumber = models.ForeignKey(LibraryAllBooks,on_delete=models.CASCADE,primary_key=True)
    # AccesssionNumber = models.IntegerField(primary_key=True)
    Lent_on = models.DateField()
    status = models.ForeignKey(bkstat,on_delete=models.SET("Pending"))
    # status = models.TextField()

    def __str__(self):
        # Built-in attribute of django.contrib.auth.models.User !
        return str(self.AccesssionNumber)+" "+str(self.status)
