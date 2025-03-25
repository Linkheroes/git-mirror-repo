#!/bin/bash
set -e

SOURCE_REPO=$1
TARGET_DIR=$2
TARGET_REPO=$3
GITHUB_TOKEN=$4

# Clone the target repository
git clone https://$GITHUB_TOKEN@github.com/$TARGET_REPO.git temp-target-repo
cd temp-target-repo

# Add the source repository as a remote
git remote add source-repo $SOURCE_REPO

# Fetch the source repository
git fetch source-repo

# Add the source repository as a subtree in the target directory
git subtree add --prefix=$TARGET_DIR source-repo master --squash

# Push the changes to the target repository
git push origin master --force
