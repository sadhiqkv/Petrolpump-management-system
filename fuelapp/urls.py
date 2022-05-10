from django import views
from django .urls import include,path
from.import views


urlpatterns = [
    path('',views.home,name='home'),
    path('signup',views.signup,name='signup'),
    path('loginpage',views.loginpage,name='loginpage'),
    path('usercreate',views.usercreate,name='usercreate'),
    path('index',views.index,name='index'),
    path('user_login',views.user_login,name='user_login'),
    path('logout',views.logout,name='logout'),
    path('userorder',views.userorder,name='userorder'),
    path('addorder',views.addorder,name='addorder'),
    path('addprofile',views.addprofile,name='addprofile'),
    path('userprofile',views.userprofile,name='userprofile'),
    path('viewprofile',views.viewprofile,name='viewprofile'),
    path('editprofilepage/<int:id>',views.editprofilepage,name='editprofilepage'),
    path('editprofile/<int:id>',views.editprofile,name='editprofile'),
    path('adminpage',views.adminpage,name='adminpage'),
    path('adminlogout',views.adminlogout,name='adminlogout'),
    path('adminmachine',views.adminmachine,name='adminmachine'),
    path('add_machine',views.add_machine,name='add_machine'),
    path('adminemployee',views.adminemployee,name='adminemployee'),
    path('add_employee',views.add_employee,name='add_employee'),
    path('admincompany',views.admincompany,name='admincompany'),
    path('add_company',views.add_company,name='add_company'),
    path('reportuser',views.reportuser,name='reportuser'),
    path('reportmachines',views.reportmachines,name='reportmachines'),
    path('deletemachine/<int:id>',views.deletemachine,name='deletemachine'),
    path('reportemployee',views.reportemployee,name='reportemployee'),
    path('deleteemployee/<int:id>',views.deleteemployee,name='deleteemployee'),
    path('editemployee/<int:id>',views.editemployee,name='editemployee'),
    path('editpageemployee/<int:id>',views.editpageemployee,name='editpageemployee'),
    path('reportpump',views.reportpump,name='reportpump'),
    path('deletepump/<int:id>',views.deletepump,name='deletepump'),
    path('reportorder',views.reportorder,name='reportorder'),
]