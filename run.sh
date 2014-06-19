#!/bin/bash

# Exit on first error
set -e

# Wait for the Docker daemon to be running
sleep 2

# Use docker
docker run busybox /bin/echo hello world

exit $?
