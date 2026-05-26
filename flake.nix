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
    in {
      # Specify formatter package for "nix fmt ." and "nix fmt . -- --check"
      formatter = pkgs.alejandra;

      # Specify the builder package to use to build your resume, this
      # will decide which theme to use.
      #
      # To show available packaged themes:
      # nix flake show github:etu/jsonresume-nix
      #
      # If you miss a theme, consider opening a pull request :)
      packages = rec {
        builder = jsonresume-nix.packages.${system}.resumed-kendall;
        inherit (jsonresume-nix.packages.${system}) fmt-as-json;

        # Build production build
        #
        # This may need customizations, such as using the correct file
        # format and copying other resources (such as images).
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
          # Optionally override the live server implementation:
          # liveServerPackage = <your-custom-package>;
        });

        jsonresume-to-pdf.type = "app";
        jsonresume-to-pdf.program = lib.getExe (jsonresume-nix.lib.${system}.buildPrintToPdf {
          builderDerivation = self.packages.${system}.builder;
        });
      };

      devShells.default = pkgs.mkShell {
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
