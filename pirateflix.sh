#!/bin/sh

query=$(printf '%s' "$*" | sed 's/ /\%20/g')
try=$(curl -s https://thepiratebay.party/search/$query/1/99/200 |grep -Eo "magnet:\?xt=urn:btih:[a-zA-Z0-9]*"|head -n 1)
lines=$(curl -s https://thepiratebay.party/search/$query/1/99/200 |grep -E "magnet:\?xt=urn:btih:[a-zA-Z0-9]*"|sed "s/href=\"//"|sed "s/&dn=/\ /"|sed "s/&tr/\ /"|cut -d " " -f 2,3)
magnet=$(echo $lines | cut -d " " -f 1 | head -n 1)
echo $try
peerflix -l $try --vlc -- -f
