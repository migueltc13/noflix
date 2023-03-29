#!/bin/bash

check () {
	ping -c 1 $LINK > /dev/null
	status="$?"
	if (( $status == 0 )); then
		echo "$LINK working"
	else
		echo "$LINK down"
	fi
	return 0
}

LINK='1337x.wtf'
check
LINK='thepiratebay.party'
check 