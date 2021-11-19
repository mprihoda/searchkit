{
  description = "searchkit v2";

  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = (import nixpkgs {
          inherit system;
          overlays = [ (super: self: { nodejs = super.nodejs-10_x; }) ];
        });
      in { devShell = import ./shell.nix { inherit pkgs; }; });

}
