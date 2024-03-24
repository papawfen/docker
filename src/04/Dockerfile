FROM nginx

COPY ./server.c /
COPY ./nginx.conf /bin/nginx/
COPY ./run.sh /

RUN apt update &&\
  apt install -y gcc spawn-fcgi libfcgi-dev &&\
  gcc /server.c -o /server.fcgi -lfcgi &&\
  chmod +x /run.sh

ENTRYPOINT [ "/run.sh" ]
