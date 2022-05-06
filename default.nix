{ pkgs ? import ./nix/pkgs.nix
, ocamlPackages ? pkgs.callPackage ./nix/ocamlPackages.nix {}}:
pkgs.callPackage ./nix { inherit ocamlPackages; }
