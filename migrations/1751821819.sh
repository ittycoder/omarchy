echo "Install bash-completion"

if ! pacman -Q bash-completion &>/dev/null; then
  paru -S --noconfirm --needed bash-completion
fi
