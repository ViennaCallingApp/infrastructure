FROM nginx:alpine

COPY init.sh /
RUN chmod +x /init.sh

RUN wget -O /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.2.2/dumb-init_1.2.2_amd64
RUN chmod +x /usr/local/bin/dumb-init

COPY *.conf /etc/nginx/conf.d/

ENTRYPOINT ["/usr/local/bin/dumb-init", "--"]
CMD ["sh", "-c", "/init.sh && nginx -g 'daemon off;'"]
