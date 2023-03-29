#!/bin/bash

query=$(printf '%s' "$*" | tr ' ' '+' )
link="https://www.opensubtitles.org/pb/search2/sublanguageid-por/moviename-$query"
firefox --new-tab $link
