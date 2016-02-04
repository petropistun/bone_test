FROM resin/beaglebone-python

RUN [ "cross-build-start" ]

#switch on systemd init system in container
ENV INITSYSTEM on

# Install Python and other dependencies
RUN apt-get update \
	&& apt-get install -yq dropbear sshfs mc \
	&& rm -rf /var/lib/apt/lists

RUN [ "cross-build-end" ]  