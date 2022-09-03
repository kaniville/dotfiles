#!/bin/bash

# Cronjob exemple:
# */5 * * * * /path/to/battery-notifier.sh

bat_capacity=$(cat /sys/class/power_supply/BAT0/capacity)
bat_status=$(cat /sys/class/power_supply/BAT0/status)

# Notify-send & Cron don't work without this line
export DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus

# If the battery is charging
if [[ ${bat_status} = 'Charging' ]]; then

    # If the battery capacity is greater than 80%, send a notification
    if [[ ${bat_capacity} -gt 80 ]]; then
        notify-send --urgency=critical 'Battery capacity' "${bat_capacity}% charged"
    fi

fi

# If the battery is discharging
if [[ ${bat_status} = 'Discharging' ]]; then

    # If the battery capacity is lower than 20%, send a notification
    if [[ ${bat_capacity} -lt 20 ]]; then
        notify-send --urgency=critical 'Battery capacity' "${bat_capacity}% remaining"
    fi

fi
