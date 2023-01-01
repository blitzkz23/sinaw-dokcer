FROM golang:1.18-alpine as builder
WORKDIR /app/
COPY main.go /app/

# Build binary executable agar ukuran lebih kecil dan bisa digunakan di image alpine (5mb) vs image golang (300mb)
RUN go build -o /app/main main.go 

FROM alpine:3
WORKDIR /app/

# Copy binary executable dari image builder dan simpan di working directory alpine, /app/ bisa diganti ./
COPY --from=builder /app/main /app/

EXPOSE 8080

CMD /app/main