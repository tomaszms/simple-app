FROM python:3.6-slim

ENV PROJECT_ROOT /app
WORKDIR $PROJECT_ROOT

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY . .
COPY run_migrations.sh run_migrations.sh

RUN chmod +x run_migrations.sh

CMD python manage.py runserver 0.0.0.0:8000
