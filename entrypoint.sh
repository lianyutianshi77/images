#!/bin/sh
set -e

case "$1" in
    *.json) set -- ssserver -c "$@" start;;
esac

exec "$@"
