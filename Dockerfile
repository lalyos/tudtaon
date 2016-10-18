#FROM nginx:stable-alpine
#FROM dsnnimbus/nginx-lua
#FROM openresty/openresty:1.11.2.1-alpine

#FROM multiarch/alpine:x86_64-v3.3
FROM multiarch/alpine:armhf-v3.3

# if not FROM openresty
RUN apk add -U nginx

RUN apk add -U bash postgresql

RUN apk add -U curl

COPY ./start /
ADD ./nginx.conf /etc/nginx/nginx.conf
ADD ./nginx.conf /usr/local/openresty/nginx/conf/nginx.conf

ENV COLOR lightblue
ENV BODY "Hogy a Docker 1.12 az ellen is ved"

EXPOSE 80
ENTRYPOINT /start
