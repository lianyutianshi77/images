#!/bin/sh
set -e

case "$1" in
    *.json) set -- ssserver -c "$@" -d start;;
esac

exec "$@"
