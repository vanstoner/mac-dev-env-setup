#!/bin/bash

set -e

echo "➡️ Installing Homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "➡️ Adding Homebrew to shell environment..."
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

echo "➡️ Installing Ansible via Homebrew..."
brew install ansible

echo "✅ Bootstrap complete. You're ready to run Ansible playbooks next!"

