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

# Enable nginx
RUN rm /etc/nginx/sites-enabled/default
RUN rm -f /etc/service/nginx/down

# NOTE: With nginx enable the application is going to expect the following
# files to be mounted when the container is run. See the following for more
# information.
#
# https://github.com/phusion/passenger-docker#configuring_nginx
#
# - <app.conf> -> /etc/nginx/sites-enabled/<app.conf>
# - This is a standard nginx / passenger config file for a site / application.
#
# - <app-env.conf> -> /etc/nginx/main.d/<app-env.conf>
# - This is a file with environment variables nginx should respect.

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
