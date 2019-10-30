#!/bin/sh -e

case "$MAIN" in
django)
    exec python -u manage.py runserver 0.0.0.0:"$PORT"
;;
*)
    exec python -u "$MAIN" $@
;;
esac
