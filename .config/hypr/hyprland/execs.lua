hl.on("hyprland.start", function ()
  hl.exec_cmd("qs -c noctalia-shell &")

  hl.exec_cmd("/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1")
  hl.exec_cmd("~/Documents/linux-wallpaperengine-gui/dist/linux-unpacked/linux-wallpaperengine-gui --minimized")

  --hl.exec_cmd("easyeffects --gapplication-service")
  hl.exec_cmd("wl-paste --type text --watch cliphist store")
  hl.exec_cmd("steam -silent")
  hl.exec_cmd("synology-drive")
  hl.exec_cmd("vesktop --start-minimized")

end)
