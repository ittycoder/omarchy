echo "Add missing installation of Zoom"

if ! command -v zoom &>/dev/null; then
  paru -S --noconfirm --needed zoom
fi
