#!/usr/bin/env bash

pkill dunst
while pgrep -u $UID -x dunst >/dev/null; do sleep 1; done

dunst --startup_notification true
