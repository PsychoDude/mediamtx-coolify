FROM bluenviron/mediamtx

# Get Shell
RUN apk add --no-cache bash # Install bash
SHELL ["/bin/bash", "-c"]

# Create the configuration directory
RUN mkdir -p /mediamtx.yml

# Copy the configuration file into the directory
COPY mediamtx.yml/mediamtx.yml /mediamtx.yml/mediamtx.yml

# Set correct permissions if needed (important for some configurations)
#RUN chown -R 1000:1000 /mediamtx.yml # Adjust user/group if necessary