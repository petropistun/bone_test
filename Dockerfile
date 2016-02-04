FROM resin/beaglebone-python

#switch on systemd init system in container
ENV INITSYSTEM on

# Install Python and other dependencies
RUN apt-get update \
	&& apt-get install -yq --no-install-recommends dropbear sshfs mc \
	&& rm -rf /var/lib/apt/lists

