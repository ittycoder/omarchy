echo "Install swayOSD to show volume status"

if ! command -v swayosd &>/dev/null; then
  paru -S --noconfirm --needed swayosd
  setsid uwsm app -- swayosd-server &>/dev/null &
fi
