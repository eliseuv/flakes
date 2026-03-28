{
  description = "C development environment with libraries";

  inputs = {
    flake-utils.url = "github:numtide/flake-utils";
    nixpkgs.url = "nixpkgs/nixos-unstable";
  };

  outputs =
    {
      self,
      flake-utils,
      nixpkgs,
    }@inputs:

    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in
      {

        devShells.default = pkgs.mkShell {
          buildInputs = with pkgs; [

            # Compiler
            clang

            # Tools
            clang-tools
            lldb
            clang-analyzer

            # Project
            gnumake
            bear

            # Libraries
            # raylib

          ];

          shellHook = ''
            clang --version
            clangd --version
          '';
        };

      }
    );

}
