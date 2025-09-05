#!/bin/bash

# Start Tor in background
tor &

# Wait for Tor to start
sleep 5

# Run sqlmap with provided arguments
python sqlmap.py "$@"
