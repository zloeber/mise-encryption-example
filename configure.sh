#!/usr/bin/env bash

# Check for GITHUB_TOKEN
if [ -z "$GITHUB_TOKEN" ]; then
    echo "GITHUB_TOKEN is not set. Please set it and try again."
    exit 1
fi

# check for mise
if ! command -v mise &>/dev/null; then
    echo "Please install mise first (run 'curl https://mise.run | sh')"
    exit 1
else
    eval "$(mise activate bash)"
fi

mise settings set experimental true
mise trust

# We need to automatically decrypt sops secrets
mise use -g sops

# Install all dependencies
mise install -y
