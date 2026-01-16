#!/usr/bin/env bash

process_list=$(ps -eo pid,user,comm,%cpu,rss --sort=-%cpu --no-headers \
    | awk '{
        mem=$5/1024;
        unit="MB";
        if(mem>=1024){mem/=1024; unit="GB"}
        printf "%-8s %-10s %-20s %5s%% %6.1f%s\n", $1, $2, $3, $4, mem, unit
    }' \
    | grep -v "killmenu")

selection=$(echo "$process_list" | fuzzel --dmenu --prompt "Kill > " --width=60)

[ -z "$selection" ] && exit 0

process=$(awk '{print $3}' <<< "$selection")

if [ -n "$process" ]; then
    confirm=$(printf "Yes\nNo" | fuzzel --dmenu \
        --prompt "Kill $process? " \
        --lines=2 \
        --width=20 \
        --inner-pad=5 )

    if [ "$confirm" = "Yes" ]; then
        # Force kill process #idgaf fuck you discord
        killall -9 "$process" 2>/dev/null || true
    fi

fi
