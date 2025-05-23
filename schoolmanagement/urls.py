"""
by sumit kumar
written by fb.com/sumit.luv

"""
from django.contrib import admin
from django.urls import path,include
from school import views
from django.contrib.auth.views import LoginView,LogoutView
# from django.conf import settings
# from django.urls import path, re_path
# from django.views.static import serve


urlpatterns = [
#      re_path(r'^media/(?P<path>.*)$', serve, {'document_root': settings.MEDIA_ROOT}),
# re_path(r'^static/(?P<path>.*)$', serve, {'document_root': settings.STATIC_ROOT}),
  
  
    path('admin/', admin.site.urls),
    path('',views.home_view,name=''),
    path('teacher/',include('teacher.urls')),
    
    
    path('adminclick', views.adminclick_view),
    path('teacherclick', views.teacherclick_view),
    path('studentclick', views.studentclick_view),
    path('parentclick', views.parentclick_view),

    path('adminsignup', views.admin_signup_view),
    path('studentsignup', views.student_signup_view,name='studentsignup'),
    path('bulk-signup-view', views.bulk_signup_view,name='bulk_signup_view'),
    path('teachersignup', views.teacher_signup_view),
    path('adminlogin', LoginView.as_view(template_name='school/adminlogin.html')),
    path('studentlogin', LoginView.as_view(template_name='school/studentlogin.html')),
    path('teacherlogin', LoginView.as_view(template_name='school/teacherlogin.html')),
    path('parentlogin', LoginView.as_view(template_name='school/parentlogin.html')),

    path('afterlogin', views.afterlogin_view,name='afterlogin'),
    path('logout', LogoutView.as_view(template_name='school/index.html'),name='logout'),


    path('admin-dashboard', views.admin_dashboard_view,name='admin-dashboard'),


    path('admin-teacher', views.admin_teacher_view,name='admin-teacher'),
    path('admin-add-teacher', views.admin_add_teacher_view,name='admin-add-teacher'),
    path('admin-view-teacher', views.admin_view_teacher_view,name='admin-view-teacher'),
    path('admin-approve-teacher', views.admin_approve_teacher_view,name='admin-approve-teacher'),
    path('approve-teacher/<int:pk>', views.approve_teacher_view,name='approve-teacher'),
    path('delete-teacher/<int:pk>', views.delete_teacher_view,name='delete-teacher'),
    path('delete-teacher-from-school/<int:pk>', views.delete_teacher_from_school_view,name='delete-teacher-from-school'),
    path('update-teacher/<int:pk>', views.update_teacher_view,name='update-teacher'),
    path('admin-view-teacher-salary', views.admin_view_teacher_salary_view,name='admin-view-teacher-salary'),


    path('admin-student', views.admin_student_view,name='admin-student'),
    path('admin-add-student', views.admin_add_student_view,name='admin-add-student'),
    path('admin-view-student', views.admin_view_student_view,name='admin-view-student'),
    path('delete-student-from-school/<int:pk>', views.delete_student_from_school_view,name='delete-student-from-school'),
    path('delete-student/<int:pk>', views.delete_student_view,name='delete-student'),
    path('update-student/<int:pk>', views.update_student_view,name='update-student'),
    path('admin-approve-student', views.admin_approve_student_view,name='admin-approve-student'),
    path('approve-student/<int:pk>', views.approve_student_view,name='approve-student'),
    path('admin-view-student-fee', views.admin_view_student_fee_view,name='admin-view-student-fee'),


    path('admin-attendance', views.admin_attendance_view,name='admin-attendance'),
    path('admin-take-attendance/<str:cl>', views.admin_take_attendance_view,name='admin-take-attendance'),
    path('admin-view-attendance/<str:cl>', views.admin_view_attendance_view,name='admin-view-attendance'),


    path('admin-fee', views.admin_fee_view,name='admin-fee'),
    path('admin-view-fee/<str:cl>', views.admin_view_fee_view,name='admin-view-fee'),

    path('admin-notice', views.admin_notice_view,name='admin-notice'),
    path('save-db/', views.save_sql,name='save_sql'),


    path('teacher-dashboard', views.teacher_dashboard_view,name='teacher-dashboard'),
    path('teacher-attendance', views.teacher_attendance_view,name='teacher-attendance'),
    path('teacher-take-attendance/<str:cl>', views.teacher_take_attendance_view,name='teacher-take-attendance'),
    path('teacher-view-attendance/<str:cl>', views.teacher_view_attendance_view,name='teacher-view-attendance'),
    path('teacher-notice', views.teacher_notice_view,name='teacher-notice'),

    path('student-dashboard', views.student_dashboard_view,name='student-dashboard'),
    path('student-attendance', views.student_attendance_view,name='student-attendance'),
    # path('student-soa', views.student_soa,name='student-soa'),
    # path('student-grade', views.student_grade,name='student-grade'),
    path('student-list/', views.student_list, name='student-list'),
    path('student-soa/', views.student_soa, name='student-soa'),
    path('student-grade/', views.student_grade, name='student-grade'),
    
    path('student-exam', views.student_exam_view,name='student-exam'),
    path('take-exam/<int:pk>', views.take_exam_view,name='take-exam'),
    path('start-exam/<int:pk>', views.start_exam_view,name='start-exam'),

    path('calculate-marks', views.calculate_marks_view,name='calculate-marks'),
    path('view-result', views.view_result_view,name='view-result'),
    path('check-marks/<int:pk>', views.check_marks_view,name='check-marks'),
    path('student-marks', views.student_marks_view,name='student-marks'),
    
    path('enroll/', views.new_studentenrol, name='new_studentenrol'), 
    
    
    path('parent-dashboard', views.parent_dashboard_view,name='parent-dashboard'),
    path('parent-attendance', views.parent_attendance_view,name='parent-attendance'),
    # path('student-soa', views.student_soa,name='student-soa'),
    # path('student-grade', views.student_grade,name='student-grade'),
    path('parent-list/', views.parent_list, name='parent-list'),
    path('parent-soa/', views.parent_soa, name='parent-soa'),
    path('parent-grade/', views.parent_grade, name='parent-grade'),
    
    
    
    

    path('aboutus', views.aboutus_view),
    path('contactus', views.contactus_view),
]
