FROM phusion/passenger-full:0.9.16
MAINTAINER Ceroic <ops@ceroic.com>

# Set correct environment variables.
ENV HOME /root
ENV DEBIAN_FRONTEND=noninteractive

# Use baseimage-docker's init process.
CMD ["/sbin/my_init"]

# Upgrade Passenger
RUN apt-get update && apt-get install -y -o Dpkg::Options::="--force-confold" passenger nginx-extras

# Install Packages
RUN \
    apt-get update && \
    apt-get install -y pkg-config python-dev python-pip libpq-dev libffi-dev \
    libfreetype6 libfreetype6-dev libpng-dev libncurses5-dev python2.7-dev

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

# Set our working directory to our server
WORKDIR /home/app/server
