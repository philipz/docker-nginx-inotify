FROM phusion/baseimage:latest
MAINTAINER Philipz <philipzheng@gmail.com>
RUN apt-get -qq update
RUN apt-get install -y nginx inotify-tools
ADD nginx.conf /etc/nginx/nginx.conf
RUN rm /etc/nginx/sites-enabled/default
#For Nignx
RUN mkdir /etc/service/nginx
ADD nginx.sh /etc/service/nginx/run
RUN chmod +x /etc/service/nginx/run
#For inotify
RUN mkdir /etc/service/inotify
ADD reload.sh /etc/service/inotify/run
RUN chmod +x /etc/service/inotify/run
# Define mountable directories.
VOLUME ["/mnt", "/var/log/nginx"]
EXPOSE 80
EXPOSE 443
CMD ["/sbin/my_init"]
