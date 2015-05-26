FROM phusion/passenger-full:0.9.15
MAINTAINER Ceroic <ops@ceroic.com>

# Set correct environment variables.
ENV HOME /root

# Use baseimage-docker's init process.
CMD ["/sbin/my_init"]

# Install Packages
RUN \
    apt-get update && \
    apt-get install -y pkg-config python-dev python-pip

# Our script to install python requirements
RUN mkdir -p /etc/my_init.d
ADD installrequirements.sh /etc/my_init.d/installrequirements.sh

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
