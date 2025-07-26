#!/bin/bash

# Need gum to query for input
paru -S --noconfirm --needed gum

# Configure identification
source ~/.local/share/omarchy/ansi.sh
echo -e "\nEnter identification for git and autocomplete..."
export OMARCHY_USER_NAME=$(gum input --placeholder "Enter full name" --prompt "Name> ")
export OMARCHY_USER_EMAIL=$(gum input --placeholder "Enter email address" --prompt "Email> ")
