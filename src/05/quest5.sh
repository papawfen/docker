#!/bin/bash

imageID="$(docker build -q -t quest5:newest . | awk -F ':' '{print $2}')"
docker run -d -p 80:81 -v /$(pwd)/nginx:/etc/nginx $imageID
dockle --accept-key NGINX_GPGKEY quest5:newest
