FROM alpine:3.6

ENV LANG=C.UTF-8 \
    JAVA_HOME="/opt/java"

RUN apk add --no-cache bash libaio && \
    apk add --no-cache --virtual .build-deps ca-certificates wget && \
    wget -O - https://raw.githubusercontent.com/viliam-husar/docker-alpine-shared/master/install-glibc-v1.sh | sh && \
    wget -O - https://raw.githubusercontent.com/viliam-husar/docker-alpine-shared/master/install-oracle-java-se-jre-v1.sh | sh && \
    apk del .build-deps

