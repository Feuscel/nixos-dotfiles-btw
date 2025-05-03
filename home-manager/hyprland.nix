{
  wayland.windowManager.hyprland = {
    enable = true;
    systemd.variables = ["--all"];
    systemd.enable = true;
    settings = {
    bind = [
    "SUPER, T, exec, alacritty"
    ];
    };
  };
  programs.kitty.enable = true;
}
