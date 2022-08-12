{ pkgs, ocamlPackagesOverride }:
let
  sources = import ./sources.nix {};
in
pkgs.callPackage "${sources.opam2nix}/nix/default.nix" { inherit ocamlPackagesOverride; }
