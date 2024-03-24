## Part 1. Готовый докер

Взять официальный докер образ с nginx и выкачать его при помощи docker pull

![docker](img/1.png "docker pull")

Проверить наличие докер образа через docker images

![docker](img/2.png "docker images")

Запустить докер образ через docker run -d [image_id|repository]

![docker](img/3.png "docker run -d")

Проверить, что образ запустился через docker ps

![docker](img/4.png "docker ps")

Посмотреть информацию о контейнере через docker inspect [container_id|container_name]

![docker](img/5.png "docker inspect")

По выводу команды определить и поместить в отчёт размер контейнера, список замапленных портов и ip контейнера

размер конетейнера:

![docker](img/6.png "размер")

список замапленных портов:

![docker](img/6_5.png "порты")

ip контейнера:

![docker](img/7.png "ip container")

Остановить докер образ через docker stop [container_id|container_name]
Проверить, что образ остановился через docker ps

![docker](img/8.png "docker stop")

Запустить докер с замапленными портами 80 и 443 на локальную машину через команду run

![docker](img/9.png "ports 80 and 443")

Проверить, что в браузере по адресу localhost:80 доступна стартовая страница nginx
Прописывал links http://localhost:80

![docker](img/12.png "links")

![docker](img/10.png "page in browser")

Перезапустить докер контейнер через docker restart [container_id|container_name]

![docker](img/11.png "restart")

## Part 2. Операции с контейнером

Прочитать конфигурационный файл nginx.conf внутри докер образа через команду exec

![docker](img/13.png "exec")

Создать на локальной машине файл nginx.conf

![docker](img/14.png "nginx.conf")

Настроить в нем по пути /status отдачу страницы статуса сервера nginx

![docker](img/15.png "nginx.conf")

Скопировать созданный файл nginx.conf внутрь докер образа через команду docker cp

![docker](img/15.png "nginx.conf copy")

Перезапустить nginx внутри докер образа через команду exec
Проверить, что по адресу localhost:80/status отдается страничка со статусом сервера nginx

![docker](img/16.png "restart and check page")

Экспортировать контейнер в файл container.tar через команду export

![docker](img/17.png "container.tar")

Остановить контейнер
Удалить образ через docker rmi [image_id|repository], не удаляя перед этим контейнеры

![docker](img/18.png "delete image")

Импортировать контейнер обратно через команду import

![docker](img/19.png "import")

Запустить импортированный контейнер

![docker](img/20.png "run")

Проверить, что по адресу localhost:80/status отдается страничка со статусом сервера nginx

![docker](img/21.png "browser check")

## Part 3. Мини веб-сервер

Написать мини сервер на C и FastCgi, который будет возвращать простейшую страничку с надписью Hello World!

![docker](img/22.png "hello world in c and fcgi")

Запустить написанный мини сервер через spawn-fcgi на порту 8080

![docker](img/23.png "run miniserver")

Написать свой nginx.conf, который будет проксировать все запросы с 81 порта на 127.0.0.1:8080

![docker](img/24.png "own nginx.conf")

Проверить, что в браузере по localhost:81 отдается написанная вами страничка

![docker](img/25.png "hello world start page")
