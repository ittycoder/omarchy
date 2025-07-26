echo "Remove needless fcitx5-configtool package"
if paru -Qe fcitx5-configtool &>/dev/null; then
  paru -Rns --noconfirm fcitx5-configtool
fi
