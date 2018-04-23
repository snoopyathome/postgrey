FROM alpine:3.6

RUN apk add --update postgrey make perl-utils &&\
    cpan -i NetAddr::IP &&\
    apk del make &&\
    rm -rf /var/cache/apk/*

CMD ["postgrey", "--inet", "0.0.0.0:10023", "--delay", "50", "--user", "postgrey", "--group", "postgrey"]
