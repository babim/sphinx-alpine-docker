FROM babim/alpinebase:edge

ADD sphinx.conf /etc/sphinx/sphinx.conf

RUN apk add --no-cache sphinx \
	&& mkdir -p /var/lib/sphinx \
	&& mkdir -p /var/lib/sphinx/data \
	&& mkdir -p /var/log/sphinx \
	&& mkdir -p /var/run/sphinx

EXPOSE 9306

CMD searchd --nodetach
