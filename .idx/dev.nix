{ pkgs, ... }: {
  channel = "stable-23.11";
  packages = [
    pkgs.bun
  ];
  idx = {
    extensions = [
    ];
    workspace = {
      onCreate = {
        default.openFiles = [ ".idx/dev.nix" "README.md" ];
      };
    };
  };
}
