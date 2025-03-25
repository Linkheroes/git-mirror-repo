FROM alpine:latest
RUN apk add --no-cache git
ADD *.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
