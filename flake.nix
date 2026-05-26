{
  description = "Your personal jsonresume built with Nix";

  inputs.jsonresume-nix.url = "github:etu/jsonresume-nix";
  inputs.jsonresume-nix.inputs.flake-utils.follows = "flake-utils";
  inputs.flake-utils.url = "flake-utils";

  outputs = {
    jsonresume-nix,
    self,
    flake-utils,
    nixpkgs,
    ...
  } @ inputs:
    flake-utils.lib.eachDefaultSystem (system: let
      pkgs = nixpkgs.legacyPackages.${system};
      lib = pkgs.lib;

      # Pick themes here
      # To show available packaged jsonresume themes:
      # nix flake show github:etu/jsonresume-nix
      jsonresume-theme = jsonresume-nix.packages.${system}.resumed-kendall;
      # To show available typst themes:
      # ls ./typst-themes/
      typst-theme = "basic-resume";

      # FIXME: does not work for some reason
      fonts = pkgs.lib.concatStringsSep ":" [
        # "${pkgs.garamond-libre}/share/fonts"
        # "${pkgs.garamond-libre}/share/truetype"
        # "${pkgs.garamond-libre}/share/opentype"
        "${pkgs.garamond-libre}/share/fonts/opentype"
      ];
    in {
      packages = rec {
        builder = jsonresume-theme;
        inherit (jsonresume-nix.packages.${system}) fmt-as-json;

        build-jsonresume = pkgs.runCommand "build-jsonresume" {} ''
          ln -s ${./resume.json} resume.json
          HOME=$(mktemp -d) ${lib.getExe self.packages.${system}.builder}
          mkdir $out
          cp -v resume.html $out/index.html
          # Copy other resources such as images here...
          cp -rv ${./resources} $out/resources
        '';

        default = build-jsonresume;
      };

      # Allows to run a live preview server using "nix run .#jsonresume-live"
      apps = {
        jsonresume-live.type = "app";
        jsonresume-live.program = lib.getExe (jsonresume-nix.lib.${system}.buildLiveServer {
          builderDerivation = self.packages.${system}.builder;
        });

        jsonresume-to-pdf.type = "app";
        jsonresume-to-pdf.program = lib.getExe (jsonresume-nix.lib.${system}.buildPrintToPdf {
          builderDerivation = self.packages.${system}.builder;
        });

        typst-live.type = "app";
        typst-live.program = lib.getExe (pkgs.writeShellApplication {
          name = "typst-live-reload-server";
          runtimeInputs = with pkgs; [typst-live];
          runtimeEnv = {
            TYPST_FONT_PATHS = fonts;
          };
          text = ''
            ${lib.getExe pkgs.typst-live} ./typst-themes/${typst-theme}/resume.typ -- --root ./.
          '';
        });

        typst-to-pdf.type = "app";
        typst-to-pdf.program = lib.getExe (pkgs.writeShellApplication {
          name = "typst-compile-to-pdf";
          runtimeInputs = with pkgs; [typst];
          runtimeEnv = {
            TYPST_FONT_PATHS = fonts;
          };
          text = ''
            ${lib.getExe pkgs.typst} compile --root ./. ./typst-themes/${typst-theme}/resume.typ ./renders/typst-resume.pdf
          '';
        });
      };

      devShells.default = pkgs.mkShell {
        TYPST_FONT_PATHS = fonts;

        buildInputs = with pkgs; [
          # Tools
          act
          typst

          # Editor tools
          tinymist

          codebook

          efm-langserver
          pandoc
          markdownlint-cli2
          # Not editing json in this project
          # prettier

          nixd
          alejandra
        ];
      };
    })
    // {inherit inputs;};
}
