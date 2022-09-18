#!/bin/bash

source "../.env"

cd ../ && mkdir -p "certs"

mkcert -install "$(echo "$DOMAIN")"

mv *.pem ./certs