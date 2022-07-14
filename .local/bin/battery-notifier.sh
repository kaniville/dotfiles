#!/bin/bash

# Send a notification with cronie when there is not much battery remaining
bat_capacity=$(cat /sys/class/power_supply/BAT0/capacity)
bat_status=$(cat /sys/class/power_supply/BAT0/status)

# Send a notification with cronie when the battery is low
if [[ ${bat_status} = 'Discharging' ]] && [[ ${bat_capacity} -lt 20 ]]; then
    notify-send --urgency=critical 'Battery capacity' "${bat_capacity}% remaining"
fi

# Send a notification with cronie when the battery is charged at ~80%
if [[ ${bat_status} = 'Charging' ]] && [[ ${bat_capacity} -gt 80 ]]; then
    notify-send --urgency=low 'Battery capacity' "${bat_capacity}% charged"
fi