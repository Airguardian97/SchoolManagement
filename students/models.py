# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class AuthGroup(models.Model):
    name = models.CharField(unique=True, max_length=150)

    class Meta:
        managed = False
        db_table = 'auth_group'


class AuthGroupPermissions(models.Model):
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)
    permission = models.ForeignKey('AuthPermission', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_group_permissions'
        unique_together = (('group', 'permission'),)


class AuthPermission(models.Model):
    name = models.CharField(max_length=255)
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING)
    codename = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'auth_permission'
        unique_together = (('content_type', 'codename'),)


class AuthUser(models.Model):
    password = models.CharField(max_length=128)
    last_login = models.DateTimeField(blank=True, null=True)
    is_superuser = models.IntegerField()
    username = models.CharField(unique=True, max_length=150)
    first_name = models.CharField(max_length=150)
    last_name = models.CharField(max_length=150)
    email = models.CharField(max_length=254)
    is_staff = models.IntegerField()
    is_active = models.IntegerField()
    date_joined = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'auth_user'


class AuthUserGroups(models.Model):
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_groups'
        unique_together = (('user', 'group'),)


class AuthUserUserPermissions(models.Model):
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    permission = models.ForeignKey(AuthPermission, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_user_permissions'
        unique_together = (('user', 'permission'),)


class DjangoAdminLog(models.Model):
    action_time = models.DateTimeField()
    object_id = models.TextField(blank=True, null=True)
    object_repr = models.CharField(max_length=200)
    action_flag = models.PositiveSmallIntegerField()
    change_message = models.TextField()
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING, blank=True, null=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'django_admin_log'


class DjangoContentType(models.Model):
    app_label = models.CharField(max_length=100)
    model = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'django_content_type'
        unique_together = (('app_label', 'model'),)


class DjangoMigrations(models.Model):
    app = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    applied = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_migrations'


class DjangoSession(models.Model):
    session_key = models.CharField(primary_key=True, max_length=40)
    session_data = models.TextField()
    expire_date = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_session'


class Grade(models.Model):
    stud_id = models.CharField(db_column='Stud_ID', primary_key=True, max_length=90)  # Field name made lowercase. The composite primary key (Stud_ID, subject_Code, stud_Grade, grading_Period) found, that is not supported. The first column is selected.
    subject_code = models.CharField(db_column='subject_Code', max_length=90)  # Field name made lowercase.
    stud_grade = models.CharField(db_column='stud_Grade', max_length=90)  # Field name made lowercase.
    academic_year = models.CharField(db_column='academic_Year', max_length=90)  # Field name made lowercase.
    grading_period = models.CharField(db_column='grading_Period', max_length=90)  # Field name made lowercase.
    gradelevel = models.CharField(db_column='GradeLevel', max_length=90)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'grade'
        unique_together = (('stud_id', 'subject_code', 'stud_grade', 'grading_period'),)


class Gradelevels(models.Model):
    ref = models.AutoField(db_column='Ref', primary_key=True)  # Field name made lowercase.
    grade_level = models.CharField(db_column='grade_Level',  max_length=90)  # Field name made lowercase.
    adviser = models.ForeignKey('Teacher', models.DO_NOTHING, db_column='adviser')
    school_year = models.CharField(db_column='school_Year', max_length=90)  # Field name made lowercase.
    semester = models.CharField(db_column='Semester', max_length=90)  # Field name made lowercase.

    def __str__(self):
        return self.grade_level  # Return only the grade_level field    

    class Meta:
        managed = False
        db_table = 'gradelevels'


class Guardian(models.Model):
    gid = models.AutoField(db_column='GID', primary_key=True)  # Field name made lowercase.
    stud_id = models.CharField(db_column='Stud_ID', max_length=90)  # Field name made lowercase.
    last_name = models.CharField(db_column='last_Name', max_length=90)  # Field name made lowercase.
    first_name = models.CharField(db_column='first_Name', max_length=90)  # Field name made lowercase.
    middle_name = models.CharField(db_column='middle_Name', max_length=90)  # Field name made lowercase.
    relationship = models.CharField(max_length=90)
    occupation = models.CharField(max_length=90)
    noe = models.CharField(db_column='NOE', max_length=90)  # Field name made lowercase.
    business = models.CharField(max_length=90)
    email_address = models.CharField(db_column='email_Address', max_length=90)  # Field name made lowercase.
    contact_no = models.CharField(db_column='contact_No', max_length=90)  # Field name made lowercase.
    address = models.CharField(db_column='Address', max_length=90)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'guardian'


class Monitoring(models.Model):
    mon_id = models.AutoField(db_column='mon_ID', primary_key=True)  # Field name made lowercase.
    teacher = models.ForeignKey('Teacher', models.DO_NOTHING, db_column='teacher_ID')  # Field name made lowercase.
    date = models.DateField()
    comment = models.CharField(max_length=90)
    academic_year = models.CharField(db_column='academic_Year', max_length=90)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'monitoring'


class Parent(models.Model):
    pid = models.AutoField(db_column='PID', primary_key=True)  # Field name made lowercase.
    last_name = models.CharField(db_column='last_Name', max_length=90)  # Field name made lowercase.
    first_name = models.CharField(db_column='first_Name', max_length=90)  # Field name made lowercase.
    middle_name = models.CharField(db_column='middle_Name', max_length=90)  # Field name made lowercase.
    occupation = models.CharField(max_length=90)
    noe = models.CharField(db_column='NOE', max_length=90)  # Field name made lowercase.
    business = models.CharField(max_length=90)
    email_address = models.CharField(db_column='email_Address', max_length=90)  # Field name made lowercase.
    contact_no = models.CharField(db_column='contact_No', max_length=11)  # Field name made lowercase.
    address = models.CharField(db_column='Address', max_length=90)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'parent'


class Parentstudent(models.Model):
    gid = models.IntegerField(db_column='GID', primary_key=True)  # Field name made lowercase. The composite primary key (GID, Stud_ID) found, that is not supported. The first column is selected.
    stud_id = models.CharField(db_column='Stud_ID', max_length=90)  # Field name made lowercase.
    relationship = models.CharField(max_length=90)
    isguardian = models.IntegerField(db_column='isGuardian')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'parentstudent'
        unique_together = (('gid', 'stud_id'),)


class Preliminarycharges(models.Model):
    pc_id = models.AutoField(db_column='PC_ID', primary_key=True)  # Field name made lowercase.
    grade_level = models.CharField(db_column='grade_Level', max_length=90)  # Field name made lowercase.
    name = models.CharField(max_length=90)
    description = models.CharField(max_length=90)
    academic_year = models.CharField(db_column='academic_Year', max_length=90)  # Field name made lowercase.
    date_added = models.DateField(db_column='date_Added')  # Field name made lowercase.
    amount = models.IntegerField(db_column='Amount')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'preliminarycharges'


class Previousschooling(models.Model):
    ps_id = models.AutoField(db_column='ps_ID', primary_key=True)  # Field name made lowercase.
    stud_id = models.CharField(db_column='Stud_ID', max_length=90)  # Field name made lowercase.
    grade_level = models.CharField(db_column='grade_Level', max_length=90)  # Field name made lowercase.
    nosa = models.CharField(db_column='NOSA', max_length=90)  # Field name made lowercase.
    address = models.CharField(max_length=90)
    year_attended = models.CharField(db_column='year_Attended', max_length=90)  # Field name made lowercase.
    reasonfortransfer = models.CharField(db_column='ReasonForTransfer', max_length=90)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'previousschooling'


class Requirements(models.Model):
    req_id = models.IntegerField(db_column='req_ID', primary_key=True)  # Field name made lowercase.
    r_name = models.CharField(db_column='r_Name', max_length=90)  # Field name made lowercase.
    isactive = models.IntegerField(db_column='isActive')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'requirements'


class Requirementsbridge(models.Model):
    req_id = models.IntegerField(db_column='req_ID', primary_key=True)  # Field name made lowercase. The composite primary key (req_ID, Stud_ID) found, that is not supported. The first column is selected.
    stud_id = models.CharField(db_column='Stud_ID', max_length=90)  # Field name made lowercase.
    datepass = models.DateField(db_column='datePass')  # Field name made lowercase.
    note = models.CharField(max_length=90)
    ispass = models.IntegerField(db_column='isPass')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'requirementsbridge'
        unique_together = (('req_id', 'stud_id'),)


class Scharges(models.Model):
    table_pk = models.AutoField(db_column='table_PK', primary_key=True)  # Field name made lowercase.
    stud_id = models.CharField(db_column='Stud_ID', max_length=90)  # Field name made lowercase.
    date = models.DateField()
    description = models.CharField(max_length=90)
    amount = models.IntegerField(db_column='Amount')  # Field name made lowercase.
    atm_balance = models.IntegerField(db_column='ATM_Balance')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'scharges'


class SchoolAttendance(models.Model):
    date = models.DateField()
    cl = models.CharField(max_length=10)
    present_status = models.CharField(max_length=10)
    roll = models.CharField(max_length=10, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'school_attendance'


class SchoolNotice(models.Model):
    date = models.DateField()
    message = models.CharField(max_length=500)
    by = models.CharField(max_length=20, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'school_notice'


class SchoolStudentextra(models.Model):
    roll = models.CharField(max_length=10)
    user = models.OneToOneField(AuthUser, models.DO_NOTHING)
    cl = models.CharField(max_length=10)
    fee = models.PositiveIntegerField(blank=True, null=True)
    mobile = models.CharField(max_length=40, blank=True, null=True)
    status = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'school_studentextra'


class SchoolTeacherextra(models.Model):
    salary = models.PositiveIntegerField()
    joindate = models.DateField()
    mobile = models.CharField(max_length=40)
    user = models.OneToOneField(AuthUser, models.DO_NOTHING)
    status = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'school_teacherextra'


class Schoolexpenses(models.Model):
    ref = models.AutoField(db_column='Ref', primary_key=True)  # Field name made lowercase.
    date = models.DateField(db_column='Date')  # Field name made lowercase.
    description = models.CharField(db_column='Description', max_length=90)  # Field name made lowercase.
    amount = models.FloatField(db_column='Amount')  # Field name made lowercase.
    sy = models.CharField(db_column='SY', max_length=90, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'schoolexpenses'


class Schoolincome(models.Model):
    ref = models.AutoField(db_column='Ref', primary_key=True)  # Field name made lowercase.
    date = models.DateField(db_column='Date')  # Field name made lowercase.
    description = models.CharField(db_column='Description', max_length=90)  # Field name made lowercase.
    amount = models.FloatField(db_column='Amount')  # Field name made lowercase.
    sy = models.CharField(db_column='SY', max_length=90, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'schoolincome'


class Spayment(models.Model):
    ref = models.AutoField(db_column='Ref', primary_key=True)  # Field name made lowercase.
    table_pk = models.CharField(db_column='table_PK', max_length=90)  # Field name made lowercase.
    stud_id = models.CharField(db_column='Stud_ID', max_length=90)  # Field name made lowercase.
    date = models.DateField()
    description = models.CharField(max_length=90)
    amount = models.IntegerField(db_column='Amount')  # Field name made lowercase.
    atm_balance = models.IntegerField(db_column='ATM_Balance')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'spayment'


class Standardfinancialdescription(models.Model):
    financial_description = models.CharField(db_column='financial_Description', primary_key=True, max_length=90)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'standardfinancialdescription'


class Standardgradelevel(models.Model):
    grade_level_name = models.CharField(db_column='grade_Level_Name', primary_key=True, max_length=90)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'standardgradelevel'


class Standardschoolyear(models.Model):
    ref = models.AutoField(db_column='Ref', primary_key=True)  # Field name made lowercase.
    school_year_name = models.CharField(db_column='school_Year_Name', max_length=90)  # Field name made lowercase.
    isactive = models.IntegerField(db_column='isActive')  # Field name made lowercase.
    starting_date = models.DateField(db_column='Starting_Date')  # Field name made lowercase.
    ending_date = models.DateField(db_column='Ending_Date')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'standardschoolyear'


class Standardsubjecttime(models.Model):
    subject_time_name = models.CharField(db_column='subject_Time_Name', primary_key=True, max_length=90)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'standardsubjecttime'


class Student(models.Model):
    ref = models.AutoField(db_column='Ref', primary_key=True)  # Field name made lowercase.
    studentid = models.CharField(db_column='StudentID', max_length=90)  # Field name made lowercase.
    lrn_no = models.CharField(db_column='LRN_No', max_length=90)  # Field name made lowercase.
    last_name = models.CharField(db_column='last_Name', max_length=90)  # Field name made lowercase.
    first_name = models.CharField(db_column='first_Name', max_length=90)  # Field name made lowercase.
    middle_name = models.CharField(db_column='middle_Name', max_length=90)  # Field name made lowercase.
    nick_name = models.CharField(db_column='nick_Name', max_length=90)  # Field name made lowercase.
    sex = models.CharField(max_length=90)
    dob = models.DateField(db_column='DOB')  # Field name made lowercase.
    age = models.CharField(max_length=90)
    bo = models.CharField(db_column='BO', max_length=1000)  # Field name made lowercase.
    home_address = models.CharField(db_column='home_Address', max_length=90)  # Field name made lowercase.
    religion = models.CharField(max_length=90)
    tvprogramsmoviesbooks = models.CharField(db_column='TVProgramsMoviesBooks', max_length=90)  # Field name made lowercase.
    first_language = models.CharField(db_column='first_Language', max_length=90)  # Field name made lowercase.
    language_spoken = models.CharField(db_column='language_Spoken', max_length=90)  # Field name made lowercase.
    pob = models.CharField(db_column='POB', max_length=90)  # Field name made lowercase.
    interest = models.CharField(db_column='Interest', max_length=90)  # Field name made lowercase.
    if_voucher = models.IntegerField(db_column='If_Voucher')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'student'


class Studentenrollsubject(models.Model):
    sr_id = models.CharField(db_column='SR_ID', max_length=90)  # Field name made lowercase.
    subject_code = models.CharField(db_column='subject_Code', max_length=90)  # Field name made lowercase.
    ref = models.AutoField(db_column='Ref', primary_key=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'studentenrollsubject'


class Studentregister(models.Model):
    sr_id = models.CharField(db_column='SR_ID', primary_key=True, max_length=90)  # Field name made lowercase.
    stud_id = models.CharField(db_column='Stud_ID', max_length=90)  # Field name made lowercase.
    academic_year = models.CharField(db_column='academic_Year', max_length=90)  # Field name made lowercase.
    grade_level = models.CharField(db_column='grade_Level', max_length=90)  # Field name made lowercase.
    dor = models.DateField(db_column='DOR')  # Field name made lowercase.
    nos = models.CharField(db_column='NOS', max_length=90)  # Field name made lowercase.
    nosar = models.CharField(db_column='NOSAR', max_length=90)  # Field name made lowercase.
    strand = models.CharField(db_column='Strand', max_length=90)  # Field name made lowercase.
    status = models.CharField(db_column='Status', max_length=90)  # Field name made lowercase.
    date_entered = models.DateField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'studentregister'


class Subject(models.Model):
    ref = models.AutoField(db_column='Ref', primary_key=True)  # Field name made lowercase.
    subject_code = models.CharField(db_column='subject_Code', max_length=90)  # Field name made lowercase.
    sub_name = models.CharField(db_column='sub_Name', max_length=90)  # Field name made lowercase.
    sub_time = models.CharField(db_column='sub_Time', max_length=90)  # Field name made lowercase.
    sub_room = models.CharField(db_column='sub_Room', max_length=90)  # Field name made lowercase.
    teacher_id = models.CharField(db_column='teacher_ID', max_length=90)  # Field name made lowercase.
    # grade_level = models.CharField(db_column='grade_Level', max_length=90)  # Field name made lowercase.
    grade_level = models.ForeignKey('Gradelevels', models.DO_NOTHING, db_column='ref') 
    academic_year = models.CharField(db_column='academic_Year', max_length=90)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'subject'


class Systemaccount(models.Model):
    sa_no = models.AutoField(db_column='SA_No', primary_key=True)  # Field name made lowercase. The composite primary key (SA_No, ID, username) found, that is not supported. The first column is selected.
    id = models.CharField(db_column='ID', max_length=90)  # Field name made lowercase.
    name = models.CharField(max_length=90)
    email_address = models.CharField(db_column='email_Address', max_length=90)  # Field name made lowercase.
    password = models.CharField(max_length=90)
    username = models.CharField(max_length=90)
    contact_no = models.CharField(db_column='contact_No', max_length=90)  # Field name made lowercase.
    position = models.CharField(max_length=90)
    picture = models.TextField(db_column='Picture')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'systemaccount'
        unique_together = (('sa_no', 'id', 'username'),)


class Tcharges(models.Model):
    tc_id = models.AutoField(db_column='tc_ID', primary_key=True)  # Field name made lowercase.
    teacher_id = models.CharField(db_column='teacher_ID', max_length=90)  # Field name made lowercase.
    date = models.CharField(max_length=90)
    description = models.CharField(max_length=90)
    amount = models.IntegerField(db_column='Amount')  # Field name made lowercase.
    atm_balance = models.CharField(db_column='ATM_Balance', max_length=90)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'tcharges'


class Teacher(models.Model):
    teacher_id = models.CharField(db_column='teacher_ID', primary_key=True, max_length=90)  # Field name made lowercase.
    last_name = models.CharField(db_column='last_Name', max_length=90)  # Field name made lowercase.
    first_name = models.CharField(db_column='first_Name', max_length=90)  # Field name made lowercase.
    middle_name = models.CharField(db_column='middle_Name', max_length=90)  # Field name made lowercase.
    sex = models.CharField(max_length=90)
    status = models.CharField(max_length=90)
    dob = models.DateField(db_column='DOB')  # Field name made lowercase.
    age = models.IntegerField()
    home_address = models.CharField(db_column='home_Address', max_length=90)  # Field name made lowercase.
    contact_no = models.IntegerField(db_column='contact_No')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'teacher'
