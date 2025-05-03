{

programs.bash = {

enable = true;
enableCompletion = true;
shellAliases = {
nrs = "sudo nixos-rebuild switch --flake .#nixos-btw";
hms = "home-manager switch --flake .#feuscel@nixos-btw";
};

};

}
