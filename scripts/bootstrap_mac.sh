#!/bin/bash

set -e

echo "➡️ Installing Homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "➡️ Adding Homebrew to shell environment..."
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

echo "➡️ Installing Ansible via Homebrew..."
brew install ansible

echo "➡️ Creating project directory structure..."

mkdir -p ansible/roles/homebrew/tasks
mkdir -p ansible/roles/devtools/tasks
mkdir -p ansible/roles/containers/tasks
mkdir -p ansible/roles/dotfiles/tasks
mkdir -p terraform
mkdir -p docker/grafana
mkdir -p docker/mongo
mkdir -p docker/xl_deploy
mkdir -p scripts

# Optionally add placeholder files to keep empty dirs tracked in Git
for dir in \
  ansible/roles/homebrew/tasks \
  ansible/roles/devtools/tasks \
  ansible/roles/containers/tasks \
  ansible/roles/dotfiles/tasks \
  terraform \
  docker/grafana \
  docker/mongo \
  docker/xl_deploy \
  scripts; do
    touch "$dir/.gitkeep"
done

echo "✅ Bootstrap complete. Homebrew installed, Ansible ready, and scaffold structure in place."

