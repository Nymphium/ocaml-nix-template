{ pkgs, lib, fetchFromGitHub, ocamlPackages }:
let
  opam2nix = pkgs.callPackage ./opam2nix.nix {
    ocamlPackagesOverride = ocamlPackages;
  };

  src = pkgs.nix-gitignore.gitignoreSource [] ../.;

  localPackages =
    let contents = builtins.attrNames (builtins.readDir ../.);
    in builtins.filter (lib.strings.hasSuffix ".opam") contents;

  # package names with {with-test} in opam;
  # opam2nix does not support the flag at present.
  testPackages = [ "ppx_inline_test" ];

  args = {
    ocaml = ocamlPackages.ocaml;
    selection = ./opam-selection.nix;
    inherit src;
  };

  opam = opam2nix.build args;
  resolve = opam2nix.resolve args (localPackages ++ testPackages);
in
{
  inherit opam resolve;
}
