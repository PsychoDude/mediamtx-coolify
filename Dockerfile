FROM bluenviron/mediamtx

RUN --mount=type=cache,target=/var/cache/apk \
    --mount=type=cache,target=/etc/apk \
    ["/sbin/apk", "update"]

RUN --mount=type=cache,target=/var/cache/apk \
    --mount=type=cache,target=/etc/apk \
    ["/sbin/apk", "add", "--no-cache", "ca-certificates"]

# Create the configuration directory
RUN mkdir -p /mediamtx.yml

# Copy the configuration file into the directory
COPY mediamtx.yml/mediamtx.yml /mediamtx.yml/mediamtx.yml

# Set correct permissions if needed (important for some configurations)
#RUN chown -R 1000:1000 /mediamtx.yml # Adjust user/group if necessary