#!/bin/sh

set -e

echo none > /sys/class/leds/rockpis:blue:user/trigger
echo heartbeat > /sys/class/leds/rockpis:green:power/trigger
