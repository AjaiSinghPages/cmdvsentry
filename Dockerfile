FROM ubuntu
RUN apt-get update \
    && apt-get install --no-install-recommends -qqy \
    dnsutils \
    && rm -rf /var/lib/apt/lists

ENTRYPOINT ["dig"]
