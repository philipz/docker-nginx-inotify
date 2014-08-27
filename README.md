docker-nginx-inotify
====================
Reference [Enalean/hangar-proxy](https://github.com/Enalean/hangar-proxy)

Automatically update and reload nginx configuration when the reference file is updated by inotify-tools.

##How to use
1. Start a databox container

    docker run -d --name databox -v /media/docker/nginx/config/:/mnt -v /media/docker/nginx/log:/var/log/nginx phusion/baseimage:latest
    
2. Start this auto reload nginx container

    docker run -d --name nginx --volumes-from databox -p 80:80 -p 443:443 philipz/docker-nginx-inotify
