FROM ceroic/passenger:python
MAINTAINER Ceroic <ops@ceroic.com>

# Set correct environment variables
ENV HOME /root

# Use baseimage-docker's init process.
CMD ["/sbin/my_init"]

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
