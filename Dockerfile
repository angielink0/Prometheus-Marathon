# docker image base on caddy image
# я побудую контейнер на базі базового імеджа з кадді
# кадді - це вебсервер, написаний на Go language


FROM caddy:2.0.0-alpine


#workdir
# в контейнері буде папка створена
WORKDIR /usr/share/caddy


# copy all files
# скопіюю всі файли з поточного каталогу в контейнер


COPY . .


# exspose port
# система, тобто вебсервер буде слухати 80 порт
EXPOSE 80


# run caddy (webserver)
# виконаю в контейнері саму команду по запуску кадді
# кадді - це бінарник, який в базовому імеджі
# далі він виконає конфігураційний файл...
CMD ["caddy", "run", "--config", "Caddyfile", "--adapter", "caddyfile"]