#!/bin/bash

function error {
  echo -e "\\e[91m$1\\e[39m"
  exit 1
}

function check_internet() {
  printf "Checking if you are online..."
  wget -q --spider http://github.com
  if [ $? -eq 0 ]; then
    echo "Интернет соединение активно."
  else
    error "Отсутствует подключение к интернету. Востановите подключение к интернету и повторите попытку."
  fi
}

check_internet

curl -sSL https://get.docker.com | sh || error "Ошибка инсталяции Docker."
sudo usermod -aG docker $USER || error "Ошибка добавление пользователя Docker."
echo "Перезапустите сервер для применения изменений."
