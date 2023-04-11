FROM nginx:1.22.0-alpine
MAINTAINER Bernardo Lankheet "bernardo.lankheet@jlcp.com.br"
ARG BUILD_DATE
ARG VCS_REF
LABEL org.label-schema.build-date=$BUILD_DATE \
    org.label-schema.license=Apache-2.0 \
    org.label-schema.name=udp-trap-nginx-proxy \
    org.label-schema.vcs-ref=$VCS_REF \
    org.label-schema.vcs-url=https://github.com/bernardolankheet

ENV BACKENDS=self \
    INTERFACE=eth0 \
    IP_LISTEN= \
    PORT_BACKEND=1162 \
    PORT_LISTEN=1162

RUN rm /etc/nginx/conf.d/default.conf
EXPOSE 1162
VOLUME /usr/local/lib
COPY entrypoint.sh /usr/local/bin/
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
