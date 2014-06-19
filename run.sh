#!/bin/bash

# Exit on first error
set -e

echo "Linux distro:"
lsb_release -a
echo
echo "Kernel version: $(uname -a)"

# Wait for the Docker daemon to be running
docker -d &
sleep 1

# Use docker
docker run busybox /bin/echo hello world
status=$?

kill $!

exit $status
