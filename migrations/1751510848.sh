echo "Installing missing fd terminal tool for finding files"

if ! command -v fd &>/dev/null; then
  paru -S --noconfirm --needed fd
fi
