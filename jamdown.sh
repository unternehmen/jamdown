#!/usr/bin/env sh
# jamdown.sh - download OGG files from a jamendo album page
i=1; for url in `curl -so - "$1" | sed -ne 's@.*href="\(/track/[0-9]*/[^"]*\)".*@https://www.jamendo.com\1@p' | xargs -I^^^ /bin/ksh -c 'curl -so - "^^^" | sed -ne "s@.*og:audio:secure_url\" content=\"\([^\"]*\)\".*@\1@;t a;b;:a;s@mp31@ogg1@p"'`; do curl --progress-bar -OJ "$url"; name=`echo "$url" | sed -e 's@[^?]*@@'`; echo "-> $i.ogg"; mv -i "$name" "$i.ogg"; i=`expr $i + 1`; done
