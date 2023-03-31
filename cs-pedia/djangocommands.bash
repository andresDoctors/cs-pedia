#creates virtual enviroment
#CREATES `root_directory\venv_name` folder
python -m venv venv_name
#activates virtual enviroment (begin to use it)
.\venv_name\Scripts\Activate.ps1
#install django IN VIRTUAL ENVIROMENT
python -m pip install Django
#creates django project
#CREATES root_directory\project_name folder
#CREATES root_directory\project_name\project_name folder
django-admin startproject project_name
#runs server
python project_name\manage.py runserver
#move
cd ./project_name
#creates app
#CREATES root_directory\project_name\app_name folder
python manage.py startapp app_name

.\venv_name\Scripts\Activate.ps1
python project_name\manage.py runserver
python manage.py makemigrations members
python manage.py migrate
python manage.py createsuperuser

pip install whitenoise # to serve static files when DEGUG==False

# copies all static files (including that served by Django when DEBUG==True)
# into the folder specified by STATIC_ROOT
python manage.py collectstatic
