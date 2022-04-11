FROM python:3.7-slim

WORKDIR /app

COPY . .
WORKDIR /app/api_yamdb
RUN pip3 install -r /app/requirements.txt --no-cache-dir

CMD ["gunicorn", "api_yamdb.wsgi:application", "--bind", "0:8000" ]

ENV DATABASE_NAME yamdb
ENV DATABASE_PORT 5432