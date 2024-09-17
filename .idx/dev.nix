{ pkgs, ... }: {
  channel = "stable-23.11";
  packages = [ pkgs.bun ];
  services.mysql.enable = true;
  services.mysql.package = pkgs.mysql80;
  idx = {
    extensions = [
      "castrogusttavo.symbols"
      "emroussel.atomize-atom-one-dark-theme"
      "esbenp.prettier-vscode"
      "oven.bun-vscode"
      "rangav.vscode-thunder-client"
    ];
  };
}
