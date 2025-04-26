from django import forms
from django.contrib.auth.models import User
from . import models, modelsv2

#for admin
class AdminSigupForm(forms.ModelForm):
    class Meta:
        model=User
        fields=['first_name','last_name','username','password']


#for student related form
class StudentUserForm(forms.ModelForm):
    class Meta:
        model=User
        fields=['first_name','last_name','username','password','email']
class StudentExtraForm(forms.ModelForm):
    class Meta:
        model=models.StudentExtra
        fields=['roll','cl','mobile','fee','status']



#for teacher related form
class TeacherUserForm(forms.ModelForm):
    class Meta:
        model=User
        fields=['first_name','last_name','username','password']
class TeacherExtraForm(forms.ModelForm):
    class Meta:
        model=models.TeacherExtra
        fields=['salary','mobile','status','schoolid']




#for Attendance related form
presence_choices=(('Present','Present'),('Absent','Absent'))
class AttendanceForm(forms.Form):
    present_status=forms.ChoiceField( choices=presence_choices)
    date=forms.DateField()

class AskDateForm(forms.Form):
    date=forms.DateField()




#for notice related form
class NoticeForm(forms.ModelForm):
    class Meta:
        model=models.Notice
        fields='__all__'



#for contact us page
class ContactusForm(forms.Form):
    Name = forms.CharField(max_length=30)
    Email = forms.EmailField()
    Message = forms.CharField(max_length=500,widget=forms.Textarea(attrs={'rows': 3, 'cols': 30}))
    
    
    
class StudentForm(forms.ModelForm):
    class Meta:
        model = modelsv2.Student
        fields = [
            'lrn_no', 'last_name', 'first_name', 'middle_name', 'nick_name',
            'sex', 'dob', 'age', 'bo', 'home_address', 'religion', 'tvprogramsmoviesbooks',
            'first_language', 'language_spoken', 'pob', 'interest'
        ]
        widgets = {
            'dob': forms.DateInput(attrs={'type': 'date'}),
            'bo': forms.Textarea(attrs={'rows': 3}),
            'tvprogramsmoviesbooks': forms.Textarea(attrs={'rows': 2}),
            'interest': forms.Textarea(attrs={'rows': 2}),
        }
    
    # Add Grade Level dropdown filtered by school year '2025-2026'
    gradelevel = forms.ModelChoiceField(
        queryset=modelsv2.Gradelevels.objects.filter(school_year='SY. 2025-2026'),  # Filter by school year
        empty_label="Select Grade Level",  # Set placeholder
        widget=forms.Select(attrs={'class': 'form-control'})  # Optional styling
    )