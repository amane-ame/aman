# Simply a stupid man helper

function aman() { 
    local AMAN_PREFERRED_LANGUAGE="${AMAN_PREFERRED_LANGUAGE:-zh-CN}"

    if (man "$@" > /dev/null 2>&1) then
        man -t "$@" | open -f -a "Preview"
    else
        local LANG=$(osascript -e "display alert \"No manual entry for $@.\" message \"Will use Google instead.\" as critical buttons {\"en-US\", \"$AMAN_PREFERRED_LANGUAGE\"} default button 1" | cut -c17-21)
        local URLENCODED=$(echo -n $@ | python3 -c "import urllib.parse, sys; print(urllib.parse.quote(sys.stdin.read()))")
        open "https://www.google.com/search?as_q=$URLENCODED&ie=UTF-8&lr=lang_$LANG"
    fi
}
