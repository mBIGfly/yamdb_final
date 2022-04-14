# yamdb_final

![](https://github.com/mBIGfly/yamdb_final/workflows/yamdb_final/badge.svg)
<!-- https://github.com/mBIGfly/yamdb_final/workflows/yamdb_final/badge.svg -->
# API_YAMDB
Проект для сервиса YaMDb — сбор отзывов о фильмах, книгах или музыке.

[Пример сервера](http://51.250.66.158/admin/login/?next=/admin/)

## Описание

Проект YaMDb собирает отзывы пользователей на произведения.
Произведения делятся на категории: «Книги», «Фильмы», «Музыка» и т.д.

### Запуск проект:

Клонируем репозиторий и переходим в него:
```bash
git clone https://github.com/mBIGfly/infra_sp2
```

Переходим в папку infra с файлом docker-compose.yaml

Собираем контейнеры:
```bash
docker-compose up -d --build
```

Выполняем миграции:
```bash
docker-compose exec web python manage.py makemigrations
```
```bash
docker-compose exec web python manage.py migrate
```

Создаем суперпользователя:
```bash
docker-compose exec web python manage.py createsuperuser
```

Собираем статику:
```bash
docker-compose exec web python manage.py collectstatic --no-input
```

Создаем дамп базы данных:
```bash
docker-compose exec web python manage.py dumpdata > dumpPostrgeSQL.json
```

### Пример шаблона для подключения базы данных .env неоходимо расположить в каталоге infra/.env
```
DB_ENGINE=django.db.backends.postgresql
DB_NAME=postgres
POSTGRES_USER=postgres
POSTGRES_PASSWORD=postgres
DB_HOST=db
DB_PORT=5432
```

### Автор:
Максим Мухин