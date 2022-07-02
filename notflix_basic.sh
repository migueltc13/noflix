#!/bin/sh

query=$(printf '%s' "$*" | tr ' ' '+' )
movie=$(curl -s https://1337x.wtf/search/$query/1/ | grep -Eo "torrent\/[0-9]{7}\/[a-zA-Z0-9?%-]*/" | head -n 1)
magnet=$(curl -s https://1337x.wtf/$movie | grep -Eo "magnet:\?xt=urn:btih:[a-zA-Z0-9]*" | head -n 1)
peerflix $magnet --vlc -- -f # -- passes the argument -f to vlc

