OCaml + [Nix](https://nixos.org/manual/nixpkgs/stable/) template
===

# Concepts
Setup *reproducable* and *lightweight* OCaml dev environment with [opam2nix](https://github.com/timbertson/opam2nix).

This template provides OCaml-LSP and ocamlformat for development.

# Setup & Run
Use [direnv](https://direnv.net/) and `dune exec it-is-test`, or run `nix-shell --run "dune exec it-is-test"`

# Add Packages
1. add `pkg` to `depends` (or `depexts`) in `test.opam`,
2. add `pkg` to `testPackages` in `nix/default.nix` if it is for test,
3. run `nix-shell default.nix -A resolve`,
4. reload shell.

