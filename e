#! /bin/bash

e=emacsclient

if [ -x emacsclient ]; then
    e= emacsclient
fi

# Use this as a hint that we're in an Aqua environment
if [ $TERM_SESSION_ID ]; then
    emacsclient_args=--create-frame
else
    emacsclient_args=--tty
fi

exec $e $emacsclient_args "$@"
