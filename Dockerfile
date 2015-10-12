FROM debian:jessie


ADD install-apts.sh /usr/local/sbin/install-apts
ADD remove-apts.sh /usr/local/sbin/remove-apts

ENV BASE_INSTALLED_PACKAGES "ca-certificates curl wget vim less locales dnsutils tcpdump pypy"
ENV TERM xterm

RUN install-apts ${BASE_INSTALLED_PACKAGES}

RUN dpkg-reconfigure locales && \
    locale-gen C.UTF-8 && \
    /usr/sbin/update-locale LANG=C.UTF-8

ENV LC_ALL C.UTF-8