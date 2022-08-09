FROM envoyproxy/envoy:v1.22.4

RUN apt-get update && \
    apt-get install gettext -y

COPY docker-entrypoint.sh /

RUN chmod 500 /docker-entrypoint.sh

COPY envoy-tmplate.yaml /tmpl/envoy-tmplate.yaml

ENV PORT 8080
ENV TARGET_HOST 172.17.0.1
ENV TARGET_PORT 443

ENTRYPOINT ["/docker-entrypoint.sh"]