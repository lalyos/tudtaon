FROM nginx:stable-alpine

RUN apk add -U bash postgresql curl

COPY ./start /

ENV COLOR lightblue
ENV BODY "Hogy a Docker 1.12 az ellen is ved"

EXPOSE 80
ENTRYPOINT /start
