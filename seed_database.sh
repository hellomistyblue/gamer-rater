#!/bin/bash

rm db.sqlite3
rm -rf ./raterapi/migrations
pipenv run python manage.py migrate
pipenv run python manage.py makemigrations raterapi
pipenv run python manage.py migrate raterapi
pipenv run python manage.py loaddata users
pipenv run python manage.py loaddata tokens
pipenv run python manage.py loaddata categories
