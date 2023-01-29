#!/bin/sh

if [ ! -d "ssl/" ]; then
  mkdir "ssl/"
fi

openssl req -newkey rsa:4096 -days 365 -nodes -x509 -keyout ssl/localhost.dev.key -out ssl/localhost.dev.crt
