############### To make exectubale show as command : ./server use an othe image like the commented last part.


# Set base image.
FROM golang:alpine

# Meta-Data.
LABEL maintainer="myacoubi"
LABEL version="1.0"
LABEL description="ASCII Art Web Dockerize"

# Set workDir.
WORKDIR /Ascii-Art-Dockerize

# Copy Application code.
COPY . .

# Expose port so it can be acessible from user machine.
EXPOSE 3000

# Run App.
CMD ["sh", "-c", "go build && ./server"]

########### Run App.
########### CMD ["go", "build", "-o", "server", "server.go"]

########### # Run App.
########### CMD ["./server"]

# Commands :
    # Restart Docker : sudo systemctl restart docker
    # Build Image : sudo docker build -t ascii-art-web-docker .
    # Run Container : sudo docker run -p 3000:3000 --rm CC
    # See all images : sudo docker images
    # See all images : sudo docker images
    # Delete images, containes and volumes : sudo docker system prune   (system can be replaced by (image, container, or volume))

# # Use the official Golang Alpine image to build the application
# FROM golang:alpine AS builder

# # Set the Current Working Directory inside the container
# WORKDIR /app

# # Copy the source code into the container
# COPY . .

# # Build the Go app
# RUN go build -o main .

# # Start a new stage from scratch
# FROM alpine:latest

# # Install necessary dependencies
# RUN apk add --no-cache libc6-compat

# # Copy the pre-built binary file from the builder stage
# COPY --from=builder /app/main .

# EXPOSE 3000

# # Command to run the executable
# CMD ["./main"]
