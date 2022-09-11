# 06.2021
Purpose of this project was to 
learn basic Django 3.2.9, MVT, ORM
DjangoDebugToolbar, Authorization, STMP
HTML, CSS, Jinja2


BUILD the project:

CREATE and activate virtual environment:
python3 -m venv venv
venv\Scripts\activate (Windows)
source venv/bin/activate (Linux)

INSTALL dependensies for backend:
pip install -r requirements.txt


LOAD dump database:
python manage.py loaddata db.json


RUN migrations
python manage.py makemigrations
python manage.py migrate


RUN Django server:
python manage.py runserver


Enjoy :)


DATABASE:
    
# dump the database into an archive
pg_dump -U username -W -F t dbname > db.tar

# restore the database
pg_restore -d django-lessons db.dump