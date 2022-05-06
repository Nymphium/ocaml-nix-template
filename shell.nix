let
  pkgs = import ./nix/pkgs.nix;
  ocamlPackages = pkgs.callPackage ./nix/ocamlPackages.nix {};
  opam = (pkgs.callPackage ./. { inherit ocamlPackages; }).opam;

  niv = import ./nix/niv.nix;
  ocamlformat = pkgs.callPackage ./nix/ocamlformat.nix { ocamlformat = ./.ocamlformat; };
in
opam.it-is-test.overrideAttrs (_: {
  buildInputs = [
    ocamlPackages.ocaml-lsp
    ocamlPackages.utop
    ocamlformat
  ];
})
