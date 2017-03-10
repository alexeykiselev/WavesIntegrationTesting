FROM anapsix/alpine-java:8_server-jre

EXPOSE 16868 16869

RUN mkdir /waves

VOLUME ["/waves"]

RUN apk add --no-cache --update iproute2

WORKDIR /waves

ADD node*.conf /waves/

ADD waves.jar /waves/

ADD docker-entrypoint.sh /waves/docker-entrypoint.sh

RUN chmod -v +x docker-entrypoint.sh

ENTRYPOINT ["/waves/docker-entrypoint.sh"]