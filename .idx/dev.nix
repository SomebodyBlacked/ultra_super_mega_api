{ pkgs, ... }: {
  channel = "stable-23.11";
  packages = [
    pkgs.bun
  ];
  idx = {
    extensions = [
      "castrogusttavo.symbols"
      "emroussel.atomize-atom-one-dark-theme"
      "esbenp.prettier-vscode"
      "oven.bun-vscode"
    ];
    workspace = {
      onCreate = {
        default.openFiles = [ ".idx/dev.nix" "README.md" ];
      };
    };
  };
}
