#! /bin/sh
P="tinyweb"

ARCH=$(uname -m | sed -e 's/x86_64/amd64/' -e 's/aarch64/arm64/')
PROG="${P}-$(uname -s | tr '[:upper:]' '[:lower:]')-${ARCH}"
echo "Starting $PROG"
./$PROG -c


