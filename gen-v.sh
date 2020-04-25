#!/usr/bin/env bash

shopt -s nullglob

for protocol in vmess ss socks; do
    for f in ${protocol}*.json; do
        echo ${protocol}://$(base64 -w 0 "$f")
    done
done | base64 -w 0
