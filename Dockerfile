FROM golang:1.22
WORKDIR /app
RUN go install github.com/air-verse/air@latest
CMD ["air"]
