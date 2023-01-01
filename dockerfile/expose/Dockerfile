FROM golang:1.18-alpine

RUN mkdir app
COPY main.go app/

# EXPOSE untuk mengekspose port yang akan digunakan oleh container (hanya memberitahu, tidak mempublish port)
EXPOSE 8080

CMD go run app/main.go