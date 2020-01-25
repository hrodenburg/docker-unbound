FROM alpine:3.11
MAINTAINER mail@hugorodenburg.nl

RUN apk -U add \
	unbound && \
	mkdir /etc/unbound/unbound.conf.d && \
	mv /etc/unbound/unbound.conf /etc/unbound/unbound.conf.d/10-defaults.conf

COPY assets/unbound /etc/unbound/
COPY start.sh /

CMD ./start.sh
