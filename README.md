docker-nginx-inotify
====================
Reference [Enalean/hangar-proxy](https://github.com/Enalean/hangar-proxy)

Automatically update and reload nginx configuration when the reference file is updated by inotify-tools.

##How to use
docker run -d -v /home/core/nginx/config:/mnt,//home/core/nginx/log:/var/log/nginx -p 80:80 443:443 philipz/docker-nginx-inotify
