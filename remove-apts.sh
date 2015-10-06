#!/bin/bash

set -e


DEBIAN_FRONTEND=noninteractive

# echo "Updating apt cache"
# apt-get update
echo "Removing $@"
apt-get remove -y $@
# apt-get clean
# rm -rf /var/cache/apt/* /var/lib/apt/lists/*