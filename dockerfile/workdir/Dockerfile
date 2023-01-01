FROM golang:1.18-alpine

WORKDIR /app
COPY main.go /app

EXPOSE 8080
# Tidak perlu lagi menuliskan dir app/main.go karena sudah diset di workdir
CMD go run main.go