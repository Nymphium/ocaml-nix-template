{ pkgs, lib, ocamlPackages, additionalTestPackages ? [ ]
, additionalDevPackages ? [ ] }:
let
  opamContents = pkgs.callPackage ./opamContents.nix { };

  opam2nix =
    pkgs.callPackage ./opam2nix.nix { ocamlPackagesOverride = ocamlPackages; };

  src = pkgs.nix-gitignore.gitignoreSource [ ] ../.;

  args = {
    ocaml = ocamlPackages.ocaml;
    selection = ./opam-selection.nix;
    inherit src;
  };

  opam = opam2nix.build args;
  resolve = opam2nix.resolve args
    (with opamContents; localPackages ++ testPackages ++ devPackages);
in { inherit opam resolve; }
