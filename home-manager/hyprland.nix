{
  wayland.windowManager.hyprland = {
    enable = true;
    systemd.variables = ["--all"];
    systemd.enable = true;
    settings = {
      input = {
        kb_layout = "fr";
      };
      "$mod" = "SUPER";
      bind = [
        "$mod, T, exec, alacritty"
        "$mod, B, exec, firefox"
        "$mod, Q, killactive,"
        # Example binds, see https://wiki.hyprland.org/Configuring/Binds/ for more
        "$mod, RETURN, exec, ghostty"
        #"$mod, A, exec, grim -g "$(slurp)" - | swappy -f -"
        "$mod, Q, killactive,"
        "$mod SHIFT, M, exit,"
        "$mod, V, togglefloating,"
        #"CTRL, SPACE, exec, rofi -show combi -modi window,run,combi -combi-modi window,run"
        "CTRL, SPACE, exec, wofi"
        "$mod, F, fullscreen"
        "$mod, Y, pin"
        #"$mod, P, pseudo, # dwindle"
        "$mod, J, togglesplit, "
        "$mod, K, togglegroup,"
        "$mod, Tab, changegroupactive, f"
        #"$mod SHIFT, G,exec,hyprctl --batch "keyword general:gaps_out 5;keyword general:gaps_in 3""
        #"$mod , G,exec,hyprctl --batch "keyword general:gaps_out 0;keyword general:gaps_in 0""
        # Volume control"
        #",XF86AudioLowerVolume,exec,pamixer -ud 3 && pamixer --get-volume > /tmp/$HYPRLAND_INSTANCE_SIGNATURE.wob"
        #",XF86AudioRaiseVolume,exec,pamixer -ui 3 && pamixer --get-volume > /tmp/$HYPRLAND_INSTANCE_SIGNATURE.wob"
        # mute sound"
        #",XF86AudioMute,exec,amixer sset Master toggle | sed -En '/\[on\]/ s/.*\[([0-9]+)%\].*/\1/ p; /\[off\]/ s/.*/0/p' | head -1 > /tmp/$HYPRLAND_INSTANCE_SIGNATURE.wob"
        # Playback control"
        ",XF86AudioPlay,exec, playerctl play-pause"
        ",XF86AudioNext,exec, playerctl next"
        ",XF86AudioPrev,exec, playerctl previous"
        # Screen brightness"
        ", XF86MonBrightnessUp, exec, brightnessctl s +5%"
        ", XF86MonBrightnessDown, exec, brightnessctl s 5%-"
        "$mod SHIFT, P, exec, gnome-calculator"
        "$mod, L, exec, swaylock-fancy -e -K -p 10 -f Hack-Regular"
        #"$mod, P, exec, ~/.scripts/dmshot"
        "$mod, O, exec, killall -SIGUSR2 waybar"
        # Move focus with mainMod + arrow keys"
        "$mod, left, movefocus, l"
        "$mod, right, movefocus, r"
        "$mod, up, movefocus, u"
        "$mod, down, movefocus, d"
        # Switch workspaces with mainMod + [0-9]"
        "$mod, ampersand, workspace, 1"
        "$mod, eacute, workspace, 2"
        "$mod, quotedbl, workspace, 3"
        "$mod, apostrophe, workspace, 4"
        "$mod, parenleft, workspace, 5"
        "$mod, minus, workspace, 6"
        "$mod, egrave, workspace, 7"
        "$mod, underscore, workspace, 8"
        "$mod, ccedilla, workspace, 9"
        "$mod, agrave, workspace, 10"
        "$mod, period, workspace, e+1"
        "$mod, comma, workspace,e-1"
        "$mod, minus, movetoworkspace,special"
        "$mod, equal, togglespecialworkspace"
        "$mod SHIFT,left ,movewindow, l"
        "$mod SHIFT,right ,movewindow, r"
        "$mod SHIFT,up ,movewindow, u"
        "$mod SHIFT,down ,movewindow, d"
        # Move active window to a workspace with mainMod + CTRL + [0-9]"
        "$mod CTRL, ampersand, movetoworkspace, 1"
        "$mod CTRL, eacute, movetoworkspace, 2"
        "$mod CTRL, quotedbl, movetoworkspace, 3"
        "$mod CTRL, apostrophe, movetoworkspace, 4"
        "$mod CTRL, parenleft, movetoworkspace, 5"
        "$mod CTRL, minus, movetoworkspace, 6"
        "$mod CTRL, egrave, movetoworkspace, 7"
        "$mod CTRL, underscore, movetoworkspace, 8"
        "$mod CTRL, ccedilla, movetoworkspace, 9"
        "$mod CTRL, agrave, movetoworkspace, 10"
        "$mod CTRL, left, movetoworkspace, -1"
        "$mod CTRL, right, movetoworkspace, +1"
        # same as above, but doesnt switch to the workspace"
        "$mod SHIFT, ampersand, movetoworkspacesilent, 1"
        "$mod SHIFT, eacute, movetoworkspacesilent, 2"
        "$mod SHIFT, quotedbl, movetoworkspacesilent, 3"
        "$mod SHIFT, apostrophe, movetoworkspacesilent, 4"
        "$mod SHIFT, parenleft, movetoworkspacesilent, 5"
        "$mod SHIFT, minus, movetoworkspacesilent, 6"
        "$mod SHIFT, egrave, movetoworkspacesilent, 7"
        "$mod SHIFT, underscore, movetoworkspacesilent, 8"
        "$mod SHIFT, ccedilla, movetoworkspacesilent, 9"
        "$mod SHIFT, agrave, movetoworkspacesilent, 10"
        # Scroll through existing workspaces with mainMod + scroll"
        "$mod, mouse_down, workspace, e+1"
        "$mod, mouse_up, workspace, e-1"
        "$mod,slash,workspace,previous"
        "$mod,R,submap,resize"
        "CTRL SHIFT, left, resizeactive,-15 0"
        "CTRL SHIFT, right, resizeactive,15 0"
        "CTRL SHIFT, up, resizeactive,0 -15"
        "CTRL SHIFT, down, resizeactive,0 15"
        "CTRL SHIFT, l, resizeactive, 15 0"
        "CTRL SHIFT, h, resizeactive,-15 0"
        "CTRL SHIFT, k, resizeactive, 0 -15"
        "CTRL SHIFT, j, resizeactive, 0 15"
      ];
      bindm = [
        "$mod, mouse:272, movewindow"
        "$mod, mouse:273, resizewindow"
      ];
      gestures = {
        workspace_swipe = true;
        workspace_swipe_fingers = 4;
        workspace_swipe_distance = 250;
        workspace_swipe_invert = true;
        workspace_swipe_min_speed_to_force = 15;
        workspace_swipe_cancel_ratio = 0.5;
        workspace_swipe_create_new = false;
      };
      binds = {
        workspace_back_and_forth = 1;
        allow_workspace_cycles = 1;
      };
    };
  };
  programs.kitty.enable = true;
}
