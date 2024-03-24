FROM nginx

COPY ./server.c /
COPY ./nginx.conf /etc/nginx/
COPY ./run.sh /

RUN apt-get update &&\
  apt-get install -y gcc spawn-fcgi libfcgi-dev &&\
  rm -rf /var/lib/apt/lists/* &&\
  gcc  /server.c -o /server.fcgi -lfcgi &&\
  chmod +x /run.sh &&\
  chown -R nginx:nginx /var/cache/nginx/ &&\
  chown -R nginx:nginx /var/run/ &&\
  chmod g-s \
  /usr/bin/wall \
  /sbin/unix_chkpwd \
  /usr/bin/expiry \
  /usr/bin/chage &&\
  chmod u-s \
  /bin/umount \
  /usr/bin/passwd \
  /bin/mount \
  /bin/su \
  /usr/bin/newgrp \
  /usr/bin/gpasswd \
  /usr/bin/chsh \
  /usr/bin/chfn

USER nginx

ENTRYPOINT [ "/run.sh" ]
