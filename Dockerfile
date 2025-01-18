# Use the official mediamtx image as the base image
FROM bluenviron/mediamtx

# Copy the custom configuration file into the container
COPY ./mediamtx.yml /mediamtx.yml

# Optionally, you can set any other configurations or commands here if needed