#!/bin/bash

query=$(printf '%s' "$*" | tr ' ' '+' )
stack=$(curl -s https://1337x.wtf/search/$query/1/ | grep -Eo "torrent\/[0-9]{7}\/[a-zA-Z0-9?%-]*/")

c=0
for i in ${stack[@]}
  do
    ((c=c+1))
    echo "$c: $i"
  done

read input
c=0
for i in ${stack[@]}
  do
    ((c=c+1))
    if (($c==$input))
    then
      magnet=$(curl -s https://1337x.wtf/$i | grep -Po "magnet:\?xt=urn:btih:[a-zA-Z0-9]*" | head -n 1)
    fi
  done
peerflix -v $magnet

