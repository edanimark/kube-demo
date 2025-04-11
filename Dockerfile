# Build stage
FROM golang:1.24 AS builder

WORKDIR /app
COPY my-app/go.mod ./
RUN go mod download

COPY my-app/ .
RUN go build -o main

# Final image
FROM alpine:latest

WORKDIR /root/
COPY --from=builder /app/main .

EXPOSE 8080
CMD ["./main"]