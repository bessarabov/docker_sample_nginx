FROM ubuntu:14.04

ENV UPDATED_AT 2014-10-18

RUN apt-get update
RUN apt-get install -y nginx

COPY nginx.conf /root/nginx.conf

RUN mkdir /site
COPY public/ /site/public/

EXPOSE 80

CMD nginx -c /root/nginx.conf
