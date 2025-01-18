# Use an Alpine base image that includes sh
FROM alpine:latest

# Set the working directory
WORKDIR /app

# Copy your configuration file into the image
COPY mediamtx.yml /mediamtx.yml

# Use a placeholder command since this is just for config generation
CMD ["/bin/sh", "-c", "sleep infinity"]