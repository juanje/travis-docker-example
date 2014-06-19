#!/bin/bash

# Exit on first error
set -e

# Use docker
docker run busybox /bin/echo hello world

exit $?
