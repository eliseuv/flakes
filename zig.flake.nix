{
  description = "Zig development environment";

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
            zig
            zig-shell-completions

            # LSP
            zls

            # Debug
            lldb

          ];

          shellHook = ''
            zig version
          '';
        };

      }
    );

}
