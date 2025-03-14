{
  description = "Nix darwin option search static website generator";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = {
    self,
    nixpkgs,
    flake-utils,
    ...
  } @ inputs:
    flake-utils.lib.eachDefaultSystem (system: let
      pkgs = import nixpkgs {
        inherit system;
        overlays = [];
        config.allowUnfree = true;
      };
    in {
      # Nix script formatter
      formatter = pkgs.alejandra;

      # Output compiled website
      packages.default = pkgs.runCommand "public" {} ''
        cd ${./.}
        ${pkgs.hugo}/bin/hugo --noBuildLock --minify -d $out
      '';

      # Development environment
      devShells.default = pkgs.mkShell rec {
        buildInputs = with pkgs; [
          hugo
          ruby
        ];
      };
    });
}
