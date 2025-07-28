#!/bin/bash

status=$(dunstctl is-paused)

if [ "$status" == "false" ]; then
    echo "  "
elif [ "$status" == "true" ]; then
    echo "  "
else
    echo "Unexpected output: $status"
fi
