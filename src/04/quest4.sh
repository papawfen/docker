#!/bin/bash

imageID="$(docker build -q -t quest4 . | awk -F ':' '{print $2}')"
docker run -d -p 80:81 -v /$(pwd)/nginx:/etc/nginx $imageID
