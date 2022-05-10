from django.db import models
from django.contrib.auth.models import User

# Create your models here.
class Machine(models.Model):
    name=models.CharField(max_length=255)
    phone=models.CharField(max_length=255)
    email=models.EmailField()
    company_name=models.CharField(max_length=255)
    machine_no=models.CharField(max_length=255)

class order(models.Model):
    name=models.CharField(max_length=255)
    phone=models.IntegerField()
    email=models.EmailField()
    machine_no=models.ForeignKey(Machine,on_delete=models.CASCADE, null=True)
    company_name=models.CharField(max_length=255)

class employee(models.Model):
    name=models.CharField(max_length=255)
    phone=models.IntegerField()
    email=models.EmailField()
    address=models.CharField(max_length=255)
    company_name=models.CharField(max_length=255)

class pump(models.Model):
    company=models.CharField(max_length=255)
    place=models.CharField(max_length=255)
    phone_no=models.IntegerField()
    email=models.EmailField()

class profiles(models.Model):
    name=models.ForeignKey(User,on_delete=models.CASCADE, null=True)
    phone_no=models.IntegerField()
    place=models.CharField(max_length=255)
    email=models.EmailField()
    company=models.ForeignKey(pump,on_delete=models.CASCADE, null=True)
    image=models.ImageField(upload_to="image/",null=True)


    