# Ceroic Passenger

Ceroic Passenger is a docker image based off of phusion/passenger-docker that
offers some conventions and includes heavy dependencies that are complicated
to build within a container.

This is a HEAVY image and is geared towards convenience more than being as
slim as possible.

Currently there are only python images, however we plan on adding Ruby and
Node images in the future.

## Python Images

### Python Web

[![Docker Repository on Quay.io](https://quay.io/repository/ceroic/passenger-python/status "Docker Repository on Quay.io")](https://quay.io/repository/ceroic/passenger-python)

Python web is used primarily for Django installations and includes the following
python libraries that are useful or take a while to build:

- virtualenv
- gnureadline
- 'celery[redis]'
- flower
- pyzmq
- pandas==0.16.1

#### Usage

This image is geared towards running a web application using Phusion Passenger and
expects the following conventions:

- A requirements file to be in the project root.
- A volume containing your application code mounted to /home/app
- A volume containing your nginx site configuration mounted to /etc/nginx/sites-enabled
- A volume containing your nginx env configuration mounted to /etc/nginx/main.d

For more information see https://github.com/phusion/passenger-docker#configuring-nginx

### Python Worker

[![Docker Repository on Quay.io](https://quay.io/repository/ceroic/passenger-python-worker/status "Docker Repository on Quay.io")](https://quay.io/repository/ceroic/passenger-python-worker)

Python worker is exactly the same as web except it does not enable nginx.
