echo "Replace volume control GUI with a TUI"

if ! command -v wiremix &>/dev/null; then
  paru -S --noconfirm --needed wiremix
  paru -Rns --noconfirm pavucontrol

  omarchy-refresh-applications
  omarchy-refresh-waybar
fi
