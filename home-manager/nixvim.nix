{
  config,
  pkgs,
  lib,
  inputs,
  ...
}: 
{
  imports = [
    inputs.nixvim.homeManagerModules.nixvim
 ];
  home.shellAliases.v = "nvim";

  programs.nixvim = {
    enable = true;
    defaultEditor = true;

    performance = {
      combinePlugins = {
        enable = true;
        standalonePlugins = [
          "hmts.nvim"
          "neorg"
          "nvim-treesitter"
        ];
      };
      byteCompileLua.enable = true;
    };

    viAlias = true;
    vimAlias = true;

    colorschemes.catppuccin.enable = true;
    plugins.lualine.enable = true;
    luaLoader.enable = true;
  };
}
