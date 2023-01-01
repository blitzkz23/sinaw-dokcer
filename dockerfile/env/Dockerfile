FROM golang:1.18-alpine
# Ini default value port, yang bisa diubah waktu build container
ENV APP_PORT=8080

RUN mkdir app
COPY main.go app/

EXPOSE ${APP_PORT}
CMD go run app/main.go