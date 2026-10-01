{
  description = "Build LaTeX document with minted";
  inputs = {
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = {
    nixpkgs,
    flake-utils,
    ...
  }:
    flake-utils.lib.eachDefaultSystem (
      system: let
        pkgs = import nixpkgs {inherit system;};
        latex = pkgs.texliveFull;
        mainTeXFile = "main.tex";
        dev-packages = with pkgs; [
          zathura
          wmctrl
        ];
      in rec {
        devShell = pkgs.mkShell {
          buildInputs = [latex] ++ dev-packages;
        };

        packages = flake-utils.lib.flattenTree {
          document = pkgs.stdenvNoCC.mkDerivation {
            name = "document";
            src = ./.;
            buildInputs = [latex];
            phases = ["unpackPhase" "buildPhase" "installPhase"];
            buildPhase = ''
              latexmk ${mainTeXFile}
            '';
            installPhase = ''
              mkdir -p $out
              cp build/*.pdf $out/
            '';
          };
        };

        defaultPackage = packages.document;
      }
    );
}
