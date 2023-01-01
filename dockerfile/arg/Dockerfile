FROM golang:1.18-alpine

ARG appname=main
# Masukkan argumen ke dalam env agar bisa digunakan pada runtime CMD

RUN mkdir app
COPY main.go app/
RUN mv app/main.go app/${appname}.go

EXPOSE 8080

ENV APP_NAME=${appname}
CMD go run app/${APP_NAME}.go