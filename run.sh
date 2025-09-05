#!/bin/bash

# Run sqlmap with Docker
# Usage: ./run.sh [--tor] [sqlmap arguments]

if [[ "$1" == "--tor" ]]; then
    shift
    IMAGE="sqlmap:tor"
    echo "Running sqlmap with Tor support..."
else
    IMAGE="sqlmap:latest"
    echo "Running sqlmap..."
fi

# Create output directory
mkdir -p output

# Run sqlmap
docker run --rm -it \
  -v "$(pwd)/output:/opt/sqlmap/output" \
  $IMAGE "$@"

# Example usage:
# ./run.sh -u "http://example.com/page.php?id=1"                    # Base sqlmap
# ./run.sh --tor -u "http://example.com/page.php?id=1" --tor        # With Tor
