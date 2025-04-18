#!/bin/bash
sudo apt-get update
sudo apt-get install -y live-build

mkdir liveos && cd liveos

lb config \
  --debian-installer live \
  --distribution bookworm \
  --archive-areas "main contrib non-free"

lb build
