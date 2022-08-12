{ pkgs, lib }:
let
  localPackages =
    let contents = builtins.attrNames (builtins.readDir ../.);
    in builtins.filter (lib.strings.hasSuffix ".opam") contents;

  contents =
    lib.lists.map (opam:
      let
        lines = lib.strings.splitString "\n" (builtins.readFile (../. + "/${opam}"));
        devPackages =
          let re = builtins.match ''[[:space:]]*"([a-zA-Z0-9\-_]+)"[[:space:]]*\{.*with-doc.*}[[:space:]]*''; in
          lib.lists.map (l: builtins.elemAt (re l) 0) (lib.lists.filter (l: builtins.isList (re l)) lines);

        testPackages =
          let re = builtins.match ''[[:space:]]*"([a-zA-Z0-9\-_]+)"[[:space:]]*\{.*with-test.*}[[:space:]]*''; in
          lib.lists.map (l: builtins.elemAt (re l) 0) (lib.lists.filter (l: builtins.isList (re l)) lines);
      in
      { inherit devPackages testPackages; }) localPackages;
in
{
  inherit localPackages;
  testPackages =
    lib.lists.foldl' (acc: { testPackages, ... }: acc ++ testPackages ) [] contents;

  devPackages =
    lib.lists.foldl' (acc: { devPackages, ... }: acc ++ devPackages ) [] contents;
}

