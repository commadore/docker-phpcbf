FROM php:7.4.8-alpine

LABEL authors="herloct <herloct@gmail.com>, commadore <mcommadore@protonmail.com>"
ENV PHPCBF_VERSION=3.5.5

RUN curl -L https://github.com/squizlabs/PHP_CodeSniffer/releases/download/$PHPCBF_VERSION/phpcbf.phar > /usr/local/bin/phpcbf \
    && chmod +x /usr/local/bin/phpcbf \
    && rm -rf /var/cache/apk/* /var/tmp/* /tmp/*

VOLUME ["/project"]
WORKDIR /project

ENTRYPOINT ["phpcbf"]
CMD ["--version"]
