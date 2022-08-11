xprop -id $(xdotool getwindowfocus) WM_CLASS | grep -o '\".*",' | cut -d "\"" -f 2
