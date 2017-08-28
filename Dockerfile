FROM alpine:3.6
RUN apk add --no-cache \
    g++ \
    libstdc++ \
  && apk del --purge \
    g++
ADD index /register-api
ENTRYPOINT ["/register-api"]
