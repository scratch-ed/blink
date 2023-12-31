#! /usr/bin/env bash

set -euo pipefail

# When will Scratch update?
export NODE_OPTIONS=--openssl-legacy-provider

# Ensure we are up-to-date.
#git submodule update --init

# Itch
cd itch
npm install
npm run build
npm link
cd ..

# Scratch VM
cd scratch-vm
npm install --legacy-peer-deps
npm run build
npm link
cd ..

# Scratch GUI
cd scratch-gui
npm install
npm link scratch-vm itch
npm run build
cd ..

echo "Building done."
echo "In most cases, you'll want to run 'npm start' inside the scratch-gui folder."
echo "Otherwise, see the readme."
