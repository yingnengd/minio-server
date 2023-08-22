FROM abcsy/minio
ADD entrypoint.sh .

# RUN chmod +x /usr/bin/minio \
#     && chmod +x /usr/bin/gosu \
#     && chmod +x /entrypoint.sh \
#     && addgroup minio \
#     && adduser -s /bin/false -G minio -S -D minio

ENTRYPOINT  ["/entrypoint.sh"]
VOLUME      ["/data"]
EXPOSE      9000
CMD         ["server","/data"]
