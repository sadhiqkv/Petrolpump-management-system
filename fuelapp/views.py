import os
from django.shortcuts import render
from django.shortcuts import render,redirect
from django.contrib import messages
from django.http.response import HttpResponse
from django.contrib.auth.models import User,auth
from django.contrib.auth import authenticate,login,logout
from django.contrib.auth import login as auth_login
from django.contrib.auth.decorators import login_required 
from fuelapp.models import Machine, order, employee, pump, profiles



# Create your views here.
def home(request):
    return render(request,'home.html')

def signup(request):
    return render(request,'signup.html') 

def loginpage(request):
    return render(request,'login.html')

@login_required(login_url='loginpage')
def index(request):
  if request.user.is_authenticated:
    id=request.user.id
    images=profiles.objects.filter(name=id)
  return render(request,'index.html',{'images':images})

@login_required(login_url='loginpage')
def userorder(request):
 if request.user.is_authenticated:
    id=request.user.id
    images=profiles.objects.filter(name=id)
    Machines=Machine.objects.all()
    context={'Machines':Machines,'images':images}
    return render(request,'userorder.html',context)
 
@login_required(login_url='loginpage')
def userprofile(request):
  if request.user.is_authenticated:
     id=request.user.id
     images=profiles.objects.filter(name=id)
     pumps=pump.objects.all()
     context={'pumps':pumps,'images':images}
     return render(request,'userprofile.html',context)

@login_required(login_url='loginpage')
def viewprofile(request):
    id=request.GET.get('id')
    pfs=profiles.objects.filter(name=id)
    images=profiles.objects.filter(name=id)
    return render(request,'viewprofile.html',{'pfs':pfs,'images':images})

@login_required(login_url='loginpage')    
def adminpage(request):
       return render(request,'adminpage.html')

@login_required(login_url='loginpage')        
def adminmachine(request):
    return render(request,'adminmachine.html')

@login_required(login_url='loginpage')
def adminemployee(request):
    return render(request,'adminemployee.html')

@login_required(login_url='loginpage')
def admincompany(request):
    return render(request,'admincompany.html') 



def usercreate(request):
    if request.method=='POST':
        first_name=request.POST['first_name1']
        last_name=request.POST['last_name']
        username=request.POST['username']
        password=request.POST['password']
        cpassword=request.POST['cpassword']
        email_id=request.POST['email_id']
        print(email_id)

        if password==cpassword:
            if User.objects.filter(username=username).exists():
                messages.info(request,'user already exists')
                return redirect('signup')
            else:    
                user=User.objects.create_user(first_name=first_name,
                    last_name=last_name,
                    username=username,
                    password=password,
                    email=email_id)
                user.save()
                print('succeed')
                messages.info(request,'password matching')
                return redirect('loginpage')
        else:
            messages.info(request,'password not matching')        
        return redirect('signup')

#user login functionaly view....

def user_login(request):
    if request.user.is_authenticated:
        return redirect('index')
    if request.method == 'POST':
        username = request.POST['username']
        password = request.POST['password']
        user = authenticate(request,username=username,password=password)
        if user is not None:
            print('not none')
            user_block = User.objects.get(username=username)
            print(user_block)
            if user_block.is_superuser==1:
                login(request,user)
                return redirect('adminpage')
            else:
                if user_block.is_staff==0:
                   login(request,user)
                   messages.info(request,f'welcome {username}')
                   return redirect('index')
                else:
                    messages.error(request,'user is blocked')   
        else:
            messages.error(request,'Invalid Username and Password')
            return redirect('loginpage')
    

def logout(request):
    auth.logout(request)
    return render(request,'home.html')


def addorder(request):
    if request.method=='POST':
        name=request.POST['nms']
        phone=request.POST['phn']
        email=request.POST['eml']
        sell=request.POST['sel']
        machine=Machine.objects.get(id=sell)
        company=request.POST['cmp']
        ord=order(name=name,
                     phone=phone,
                     email=email,
                     company_name=company,
                     machine_no=machine)
        ord.save()
        return redirect('index')

def addprofile(request):
    if request.method=='POST':
        user=User.objects.get(username=request.user.username)
        cphone=request.POST['phone4']
        cplace=request.POST['place4']
        cemail=request.POST['email4']
        ccom=request.POST['com4']
        comp=pump.objects.get(id=ccom)
        if request.FILES.get('f1ile') is not None:
            simage=request.FILES['f1ile']
        else:
            simage="/static/images/83.jpg"
        pro=profiles(name=user,
                     phone_no=cphone,
                     place=cplace,
                     email=cemail,
                     company=comp,
                     image=simage)
        pro.save()
        return redirect('index')   

@login_required(login_url='loginpage')
def editprofilepage(request,id):
  pfs=profiles.objects.get(id=id)
  return render(request,'usereditprofile.html',{'pfs':pfs})

@login_required(login_url='loginpage')
def editprofile(request,id):
 if request.method=='POST':
      pfs=profiles.objects.get(id=id)
      pfs.phone_no=request.POST.get('phone5')
      pfs.email=request.POST.get('email5')
      pfs.place=request.POST.get('place5')
      if request.FILES.get('file') is not None:
            print(pfs.image)
            if pfs.image== "/static/images/83.jpg":
                # os.remove(pfs.image.path)
                pfs.image=request.FILES['file']
            else:
                os.remove(pfs.image.path)
                pfs.image=request.FILES['file']    
      else:
            os.remove(pfs.image.path)
            pfs.image="/static/images/83.jpg"       
      pfs.save()
      return redirect('index')
 return render(request,'usereditprofile.html')


@login_required(login_url='loginpage')
def adminlogout(request):
    auth.logout(request)
    return render(request,'home.html')

@login_required(login_url='loginpage')
def add_machine(request):
    if request.method=='POST':
        name11=request.POST['an']
        phone11=request.POST['phone1']
        email11=request.POST['email1']
        company11=request.POST['company1']
        machno1=request.POST['machno']
        mch=Machine()
        mch.name=name11
        mch.phone=phone11
        mch.email=email11
        mch.company_name=company11
        mch.machine_no=machno1
        mch.save()
        return redirect('adminpage')


def add_employee(request):
    if request.method=='POST':
        aname=request.POST['name2']
        aphone=request.POST['phone2']
        aemail=request.POST['email2']
        address=request.POST['address2']
        acompany=request.POST['comp2']
        emp=employee()
        emp.name=aname
        emp.phone=aphone
        emp.email=aemail
        emp.address=address
        emp.company_name=acompany
        emp.save()
        return redirect('adminpage')

def add_company(request):
    if request.method=='POST':
        bcompany=request.POST['acom']
        bplace=request.POST['place3']
        bphone=request.POST['phone3']
        bemail=request.POST['email3']
        com=pump()
        com.company=bcompany
        com.place=bplace
        com.phone_no=bphone
        com.email=bemail
        com.save()
        return redirect('admincompany')

#reports
@login_required(login_url='loginpage')
def reportuser(request):
    prfs=profiles.objects.all()
    return render(request,'reportuser.html',{'prfs':prfs})

@login_required(login_url='loginpage')
def reportmachines(request):
    mchs=Machine.objects.all()
    return render(request,'reportmachine.html',{'mchs':mchs})

@login_required(login_url='loginpage')
def deletemachine(request,id):
    mc=Machine.objects.get(id=id)
    mc.delete()
    return render(request,'reportmachine.html',{'mc':mc})

@login_required(login_url='loginpage')
def reportemployee(request):
    emply=employee.objects.all()
    return render(request,'reportemployee.html',{'emply':emply})

@login_required(login_url='loginpage')
def deleteemployee(request,id):
    em=employee.objects.get(id=id)
    em.delete()
    return render(request,'reportemployee.html',{'em':em})

@login_required(login_url='loginpage')
def editpageemployee(request,id):
  emply=employee.objects.get(id=id)
  return render(request,'editemployee.html',{'emply':emply})

@login_required(login_url='loginpage')
def editemployee(request,id):
 if request.method=='POST':
      emply =employee.objects.get(id=id)
      emply.name=request.POST.get('name2')
      emply.phone=request.POST.get('phone2')
      emply.email=request.POST.get('email2')
      emply.address=request.POST.get('address2')
      emply.company_name=request.POST.get('comp2')
      emply.save()
      return redirect('reportemployee')
 return render(request,'editemployee.html')

@login_required(login_url='loginpage')
def reportpump(request):
    pmp=pump.objects.all()
    return render(request,'reportpump.html',{'pmp':pmp})

@login_required(login_url='loginpage')
def deletepump(request,id):
    pm=pump.objects.get(id=id)
    pm.delete()
    return render(request,'reportpump.html',{'pm':pm})

@login_required(login_url='loginpage')
def reportorder(request):
    oms=order.objects.all()
    return render(request,'reportorder.html',{'oms':oms})