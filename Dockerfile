FROM alpine:latest

COPY ./docker/build /
RUN sh /build_image.sh && rm /build_image.sh

COPY ./app /usr/share/nginx/html
COPY ./app-custom /usr/share/nginx/html
COPY ./docker/config /etc

ENTRYPOINT sh /entrypoint.sh
