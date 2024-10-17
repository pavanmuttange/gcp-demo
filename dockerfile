# Step 1: Build the Go application
FROM golang:1.22.6-alpine AS build

WORKDIR /app

COPY go.mod ./
COPY go.sum ./
RUN go mod download

COPY . ./

RUN go build -o /gcp-demo

# Step 2: Create a small image with the built application
FROM alpine:3.18

WORKDIR /root/

COPY --from=build /gcp-demo .

# Expose the app on port 8003
EXPOSE 8003

# Command to run the app
CMD ["./gcp-demo"]
