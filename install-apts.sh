#!/bin/bash

set -e


DEBIAN_FRONTEND=noninteractive

echo "Updating apt cache"
apt-get update
echo "Installing $@"
apt-get install -y --no-install-recommends $@
apt-get clean
rm -rf /var/cache/apt/* /var/lib/apt/lists/*
