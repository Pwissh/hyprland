#!/bin/bash

# Check the output of dunstctl is-paused
status=$(dunstctl is-paused)

# Display the appropriate message based on the status
if [ "$status" == "false" ]; then
    echo "  "
elif [ "$status" == "true" ]; then
    echo "  "
else
    echo "Unexpected output: $status"
fi
