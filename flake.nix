{
  description = "A Typst project";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    typix = {
      url = "github:loqusion/typix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    flake-utils.url = "github:numtide/flake-utils";
    treefmt-nix = {
      url = "github:numtide/treefmt-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      self,
      nixpkgs,
      typix,
      flake-utils,
      treefmt-nix,
      ...
    }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
        typixLib = typix.lib.${system};

        src = typixLib.cleanTypstSource ./.;
        commonArgs = {
          typstSource = "main.typ";
        };

        build-drv = typixLib.buildTypstProject ({ inherit src; } // commonArgs);

        watch-script = typixLib.watchTypstProject commonArgs;

        treefmtEval = treefmt-nix.lib.evalModule pkgs {
          projectRootFile = "flake.nix";
          programs.typstfmt.enable = true;
          programs.nixfmt.enable = true;
        };

      in
      {
        packages.default = build-drv;

        apps = {
          default = flake-utils.lib.mkApp { drv = watch-script; };
          watch = flake-utils.lib.mkApp { drv = watch-script; };
        };

        formatter = treefmtEval.config.build.wrapper;

        checks = {
          formatting = treefmtEval.config.build.check self;
        };

        devShells.default = pkgs.mkShell {
          packages = [
            watch-script
            treefmtEval.config.build.wrapper
          ];
        };
      }
    );
}
