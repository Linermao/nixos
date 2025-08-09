{ ... }:

{
  # because of the homebrew module is not in the home-manager inputs
  # so this file is managed by nix-darwin directly

  homebrew = {
    enable = true;
    brews = [
      "mas" # Mac App Store CLI
      "sunnyyoung/repo/wechattweak-cli" # Wechat tool
      "googletest"
    ];
    casks = [
    ];
    masApps = {
        "Raycast Companion" = 6738274497;
    };
    onActivation.cleanup = "zap";
    onActivation.autoUpdate = true;
    onActivation.upgrade = true;
  };
}