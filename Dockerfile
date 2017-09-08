FROM debian:9
# "Borrowed" from Damien DUPORTAL

ENV BATS_VERSION 0.4.0
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -q \
	&& apt-get install -y -q --no-install-recommends bash curl ca-certificates

RUN curl -o "/tmp/v${BATS_VERSION}.tar.gz" -L \
		"https://github.com/sstephenson/bats/archive/v${BATS_VERSION}.tar.gz" \
	&& tar -x -z -f "/tmp/v${BATS_VERSION}.tar.gz" -C /tmp/ \
	&& bash "/tmp/bats-${BATS_VERSION}/install.sh" /usr/local \
	&& rm -rf /tmp/*

ENTRYPOINT ["/usr/local/bin/bats"]

CMD ["-v"]
