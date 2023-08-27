{
  description = "scratch";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    devshell = {
      url = "github:numtide/devshell";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, devshell, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs {
          inherit system;
          overlays = [ devshell.overlays.default ];
          config.allowUnfree = true;
        };
      in
      {
        devShells = rec {
          default = itch;
          itch = pkgs.devshell.mkShell {
            name = "scratch";
            packages = with pkgs; [
              nodejs_20
              chromium
              git
            ];
            env = [
              {
                name = "PUPPETEER_SKIP_CHROMIUM_DOWNLOAD";
                eval = "1";
              }
              {
                name = "PUPPETEER_EXECUTABLE_PATH";
                eval = "${pkgs.chromium.outPath}/bin/chromium";
              }
            ];
          };
        };
      }
    );
}
