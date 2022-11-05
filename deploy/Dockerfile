FROM python:3.10.4-slim-buster



RUN pip install poetry==1.1.13

# Конфигурация poetry
RUN poetry config virtualenvs.create false

# Копирование зависимостей в проект
COPY pyproject.toml poetry.lock /app/src/
WORKDIR /app/src

# Установка зависимостей
RUN poetry install

# Копирование актуального приложения
COPY . /app/src/
RUN poetry install

# Запуск
CMD ["/usr/local/bin/python", "-m", "telegram_bot"]
