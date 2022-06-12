
skull@DESKTOP-ENFPVK3 MINGW64 ~
$ cd desktop

skull@DESKTOP-ENFPVK3 MINGW64 ~/desktop
$ mkdir doxing

skull@DESKTOP-ENFPVK3 MINGW64 ~/desktop
$ cd doxing

skull@DESKTOP-ENFPVK3 MINGW64 ~/desktop/doxing
$ pip install virtualenv
Requirement already satisfied: virtualenv in c:\users\skull\appdata\local\programs\python\python39\lib\site-packages (20.6.0)
Requirement already satisfied: backports.entry-points-selectable>=1.0.4 in c:\users\skull\appdata\local\programs\python\python39\lib\site-packages (from virtualenv) (1.1.0)
Requirement already satisfied: six<2,>=1.9.0 in c:\users\skull\appdata\local\programs\python\python39\lib\site-packages (from virtualenv) (1.16.0)
Requirement already satisfied: filelock<4,>=3.0.0 in c:\users\skull\appdata\local\programs\python\python39\lib\site-packages (from virtualenv) (3.0.12)
Requirement already satisfied: distlib<1,>=0.3.1 in c:\users\skull\appdata\local\programs\python\python39\lib\site-packages (from virtualenv) (0.3.2)
Requirement already satisfied: platformdirs<3,>=2 in c:\users\skull\appdata\local\programs\python\python39\lib\site-packages (from virtualenv) (2.0.2)
WARNING: You are using pip version 21.3.1; however, version 22.1.2 is available.
You should consider upgrading via the 'c:\users\skull\appdata\local\programs\python\python39\python.exe -m pip install --upgrade pip' command.

skull@DESKTOP-ENFPVK3 MINGW64 ~/desktop/doxing
$ python -m venv venv

skull@DESKTOP-ENFPVK3 MINGW64 ~/desktop/doxing
$ ls
venv/

skull@DESKTOP-ENFPVK3 MINGW64 ~/desktop/doxing
$ source venv/Scripts/activate
(venv)
skull@DESKTOP-ENFPVK3 MINGW64 ~/desktop/doxing
$ pip install django
Collecting django
  Downloading Django-4.0.5-py3-none-any.whl (8.0 MB)
Collecting asgiref<4,>=3.4.1
  Using cached asgiref-3.5.2-py3-none-any.whl (22 kB)
Collecting sqlparse>=0.2.2
  Using cached sqlparse-0.4.2-py3-none-any.whl (42 kB)
Collecting tzdata
  Using cached tzdata-2022.1-py2.py3-none-any.whl (339 kB)
Installing collected packages: tzdata, sqlparse, asgiref, django
Successfully installed asgiref-3.5.2 django-4.0.5 sqlparse-0.4.2 tzdata-2022.1
WARNING: You are using pip version 21.1.3; however, version 22.1.2 is available.
You should consider upgrading via the 'c:\users\skull\desktop\doxing\venv\scripts\python.exe -m pip install --upgrade pip' command.
(venv)
skull@DESKTOP-ENFPVK3 MINGW64 ~/desktop/doxing
$ pip freeze
asgiref==3.5.2
Django==4.0.5
sqlparse==0.4.2
tzdata==2022.1
(venv)
skull@DESKTOP-ENFPVK3 MINGW64 ~/desktop/doxing
$ django-admin.py startproject doxing
C:\Users\skull\AppData\Local\Programs\Python\Python39\Scripts\django-admin.py:17: RemovedInDjango40Warning: django-admin.py is deprecated in favor of django-admin.
  warnings.warn(
(venv)
skull@DESKTOP-ENFPVK3 MINGW64 ~/desktop/doxing
$ ls
doxing/  venv/
(venv)
skull@DESKTOP-ENFPVK3 MINGW64 ~/desktop/doxing
$ cd doxing
(venv)
skull@DESKTOP-ENFPVK3 MINGW64 ~/desktop/doxing/doxing
$ ls
doxing/  manage.py*
(venv)
skull@DESKTOP-ENFPVK3 MINGW64 ~/desktop/doxing/doxing
$ winpty python manage.py migrate
Operations to perform:
  Apply all migrations: admin, auth, contenttypes, sessions
Running migrations:
  Applying contenttypes.0001_initial... OK
  Applying auth.0001_initial... OK
  Applying admin.0001_initial... OK
  Applying admin.0002_logentry_remove_auto_add... OK
  Applying admin.0003_logentry_add_action_flag_choices... OK
  Applying contenttypes.0002_remove_content_type_name... OK
  Applying auth.0002_alter_permission_name_max_length... OK
  Applying auth.0003_alter_user_email_max_length... OK
  Applying auth.0004_alter_user_username_opts... OK
  Applying auth.0005_alter_user_last_login_null... OK
  Applying auth.0006_require_contenttypes_0002... OK
  Applying auth.0007_alter_validators_add_error_messages... OK
  Applying auth.0008_alter_user_username_max_length... OK
  Applying auth.0009_alter_user_last_name_max_length... OK
  Applying auth.0010_alter_group_name_max_length... OK
  Applying auth.0011_update_proxy_permissions... OK
  Applying auth.0012_alter_user_first_name_max_length... OK
  Applying sessions.0001_initial... OK
(venv)
skull@DESKTOP-ENFPVK3 MINGW64 ~/desktop/doxing/doxing
$ python run server
C:\Users\skull\AppData\Local\Programs\Python\Python39\python.exe: can't open file 'C:\Users\skull\desktop\doxing\doxing\run': [Errno 2] No such file or directory
(venv)
skull@DESKTOP-ENFPVK3 MINGW64 ~/desktop/doxing/doxing
$ python manage.py runserver
Watching for file changes with StatReloader
[12/Jun/2022 09:08:27] "GET / HTTP/1.1" 200 10697
[12/Jun/2022 09:08:28] "GET /static/admin/css/fonts.css HTTP/1.1" 200 423
[12/Jun/2022 09:08:28] "GET /static/admin/fonts/Roboto-Bold-webfont.woff HTTP/1.1" 200 86184
[12/Jun/2022 09:08:28] "GET /static/admin/fonts/Roboto-Light-webfont.woff HTTP/1.1" 200 85692
[12/Jun/2022 09:08:28] "GET /static/admin/fonts/Roboto-Regular-webfont.woff HTTP/1.1" 200 85876
Not Found: /favicon.ico
[12/Jun/2022 09:08:29] "GET /favicon.ico HTTP/1.1" 404 2110
Performing system checks...

System check identified no issues (0 silenced).
June 12, 2022 - 09:07:39
Django version 4.0.5, using settings 'doxing.settings'
Starting development server at http://127.0.0.1:8000/
Quit the server with CTRL-BREAK.
(venv)
skull@DESKTOP-ENFPVK3 MINGW64 ~/desktop/doxing/doxing
$ python manage.py startapp dapp
(venv)
skull@DESKTOP-ENFPVK3 MINGW64 ~/desktop/doxing/doxing
$ ls
dapp/  db.sqlite3  doxing/  manage.py*
(venv)
skull@DESKTOP-ENFPVK3 MINGW64 ~/desktop/doxing/doxing
$ code .
(venv)
skull@DESKTOP-ENFPVK3 MINGW64 ~/desktop/doxing/doxing
$ python manage.py runserver
Watching for file changes with StatReloader
[12/Jun/2022 09:25:20] "GET / HTTP/1.1" 200 15
Performing system checks...

System check identified no issues (0 silenced).
June 12, 2022 - 09:25:08
Django version 4.0.5, using settings 'doxing.settings'
Starting development server at http://127.0.0.1:8000/
Quit the server with CTRL-BREAK.
(venv)
skull@DESKTOP-ENFPVK3 MINGW64 ~/desktop/doxing/doxing
