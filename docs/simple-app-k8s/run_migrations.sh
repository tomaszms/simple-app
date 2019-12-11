#!/bin/sh

#wait for database to be ready
while !</dev/tcp/db/5432; do sleep 1; done;

python manage.py makemigrations
python manage.py migrate
exec "$@"
