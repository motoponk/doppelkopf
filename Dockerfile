FROM python:3.7-alpine3.7

COPY . /app
WORKDIR /app

RUN pip install pipenv && pipenv install --system

EXPOSE 5000

ENV APP_PROFILE=backend.config.ProductionConfig

CMD pipenv run gunicorn --workers=2 backend:app -b :5000
