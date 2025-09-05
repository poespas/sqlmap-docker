#!/bin/bash

# Build and push both sqlmap variants
# Usage: ./build-and-push.sh [your-dockerhub-username]

USERNAME=${1:-"wortel538"}

echo "Building sqlmap base image..."
docker build -t ${USERNAME}/sqlmap:latest .

echo "Building sqlmap with Tor..."
docker build -f Dockerfile.tor -t ${USERNAME}/sqlmap:tor .

echo "Pushing images to Docker Hub..."
docker push ${USERNAME}/sqlmap:latest
docker push ${USERNAME}/sqlmap:tor

echo "Done! Images available:"
echo "  docker pull ${USERNAME}/sqlmap:latest     # Base sqlmap"
echo "  docker pull ${USERNAME}/sqlmap:tor        # With Tor support"
