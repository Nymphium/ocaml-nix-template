{ pkgs ? import ./nix/pkgs.nix
, ocamlPackages ? pkgs.callPackage ./nix/ocamlPackages.nix { }, ... }@override:
pkgs.callPackage ./nix override
