#!/bin/bash

set -e

# — base outils
sudo pacman -Sy --needed --noconfirm base-devel curl

# — Chaotic‑AUR (si absent)
grep -q "\[chaotic-aur\]" /etc/pacman.conf || {
  sudo pacman-key --recv-keys 3056513887B78AEB --keyserver keyserver.ubuntu.com
  sudo pacman-key --lsign-key 3056513887B78AEB
  curl -fsSL https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst \
       -o /tmp/keyring.zst
  curl -fsSL https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst \
       -o /tmp/mirror.zst
  sudo pacman -U --noconfirm /tmp/keyring.zst /tmp/mirror.zst
  echo -e '\n[chaotic-aur]\nInclude = /etc/pacman.d/chaotic-mirrorlist' \
  | sudo tee -a /etc/pacman.conf
}

# — mesa‑tkg (64 bit + multilib)
sudo pacman -Sy --noconfirm mesa-tkg-git lib32-mesa-tkg-git

echo "Mesa‑tkg installed – reboot or restart your session."
