echo "Install satty for the new screenshot flow"

if ! command -v satty &>/dev/null; then
  paru -S --noconfirm --needed satty
fi
