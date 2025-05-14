#! /bin/sh

case $1 in

  lld)
   	#upsc -l  2>&1 | grep -v "SSL" | grep -v "SSL"  | jq -R '[{"#UPSNAME": .}]' | jq -s 'add'
	upsc -l  2>&1 | grep -v "SSL" | grep -v "SSL"  | jq -R '[{"{#UPSNAME}": .}]' | jq -s 'add'
    ;;

  *)
     upsc $1 2>&1 | grep -v "SSL"| jq -Rn '[inputs | split(": ") | .[0] as $k | (.[1] | tonumber? // .) as $v | { ($k): $v }] | add'
    ;;
esac
