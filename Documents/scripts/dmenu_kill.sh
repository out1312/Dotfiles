#!/usr/bin/env bash

colors="-nb #150f0f -nf #ffffff -sb #db7218 -sf #000000"

#ps -u $USER -o pid,comm | dmenu $colors -fn 'JetBrainsMono-16' -c -i -l 10 -p Kill: | awk '{print $1}' | xargs -r kill

ps -u $USER -o pid,comm | awk '{printf "%-8s %s\n", $1, substr($0, index($0,$2))}' | dmenu $colors -fn 'JetBrainsMono-14' -c -i -l 10 -p Kill: | awk '{print $1}' | xargs -r kill
