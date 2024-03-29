### This file is generated by opam2nix.

self:
let
    lib = self.lib;
    pkgs = self.pkgs;
    selection = self.selection;
    repoPath = self.repoPath;
    repos = 
    {
      opam-repository = 
      rec {
        fetch = 
        {
          owner = "ocaml";
          repo = "opam-repository";
          rev = "3927b22abaf68fd9cf6a7363519eb86f7c8f7040";
          sha256 = "0vcg31pk1y2jp5mjcafyh63i7j7f9rlnz0xdv6mg5w2969nz29vh";
        };
        src = (pkgs.fetchFromGitHub) fetch;
      };
    };
in
{
  format-version = 4;
  inherit repos;
  ocaml-version = "4.13.1";
  selection = 
  {
    alcotest = 
    {
      pname = "alcotest";
      version = "1.6.0";
      src = pkgs.fetchurl 
      {
        url = "https://github.com/mirage/alcotest/releases/download/1.6.0/alcotest-1.6.0.tbz";
        sha256 = "0a939glmndarbnr3w4ilvnkjzh7g2inmdvypn7rlz1wmhdkgj07x";
      };
      opamInputs = 
      {
        inherit (selection) uutf stdlib-shims re ocaml-syntax-shims ocaml fmt
        dune cmdliner astring;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/alcotest/alcotest.1.6.0";
        hash = "sha256:0hvmdg6kp6zcnjwa3gc85ilfm67iinrdjpjjc5ginhc43hbd93ap";
      };
    };
    astring = 
    {
      pname = "astring";
      version = "0.8.5";
      src = pkgs.fetchurl 
      {
        url = "https://erratique.ch/software/astring/releases/astring-0.8.5.tbz";
        sha256 = "1ykhg9gd3iy7zsgyiy2p9b1wkpqg9irw5pvcqs3sphq71iir4ml6";
      };
      opamInputs = 
      {
        inherit (selection) topkg ocamlfind ocamlbuild ocaml;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/astring/astring.0.8.5";
        hash = "sha256:1djnad9sq12idlakj069xvwm2nn7wqm137pqbxxai5frkgi08x74";
      };
    };
    base-bytes = 
    {
      pname = "base-bytes";
      version = "base";
      src = null;
      opamInputs = {
                     inherit (selection) ocamlfind ocaml;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/base-bytes/base-bytes.base";
        hash = "sha256:0a68lmbf68jgm1i3b59j2sc3ha9yhv4678f9mfwwvczw88prq7l3";
      };
    };
    base-threads = 
    {
      pname = "base-threads";
      version = "base";
      src = null;
      opamInputs = {
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/base-threads/base-threads.base";
        hash = "sha256:1c4bpyh61ampjgk5yh3inrgcpf1z1xv0pshn54ycmpn4dyzv0p2x";
      };
    };
    base-unix = 
    {
      pname = "base-unix";
      version = "base";
      src = null;
      opamInputs = {
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/base-unix/base-unix.base";
        hash = "sha256:0mpsvb7684g723ylngryh15aqxg3blb7hgmq2fsqjyppr36iyzwg";
      };
    };
    cmdliner = 
    {
      pname = "cmdliner";
      version = "1.1.1";
      src = pkgs.fetchurl 
      {
        url = "https://erratique.ch/software/cmdliner/releases/cmdliner-1.1.1.tbz";
        sha256 = "1yxm4x34cbi06bfld601ds9drlbnyx0797ym3n6yyh4rlz1qgbm1";
      };
      opamInputs = {
                     inherit (selection) ocaml;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/cmdliner/cmdliner.1.1.1";
        hash = "sha256:0zp0q9213an1spx8ps70xlm9rhmjfqmixh59b3mb7dsj1r6p19i7";
      };
    };
    cppo = 
    {
      pname = "cppo";
      version = "1.6.9";
      src = pkgs.fetchurl 
      {
        url = "https://github.com/ocaml-community/cppo/archive/v1.6.9.tar.gz";
        sha256 = "0sm2vn5y7w7fyrwkv7f86y4nvs5vsrqy1x2nidy0lcqxq62ns0qn";
      };
      opamInputs = 
      {
        inherit (selection) ocaml dune base-unix;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/cppo/cppo.1.6.9";
        hash = "sha256:19i6yqv9lq09v3xw1sfqayh40sihhd4hfyvk9dwz1m5dv1g63xlp";
      };
    };
    csexp = 
    {
      pname = "csexp";
      version = "1.5.1";
      src = pkgs.fetchurl 
      {
        url = "https://github.com/ocaml-dune/csexp/releases/download/1.5.1/csexp-1.5.1.tbz";
        sha256 = "00mc19f89pxpmjl62862ya5kjcfrl8rjzvs00j05h2m9bw3f81fn";
      };
      opamInputs = {
                     inherit (selection) ocaml dune;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/csexp/csexp.1.5.1";
        hash = "sha256:01lc95kz13gpki4xazyh6n20kv1g9inyb5myv240wl2n9v50z8fl";
      };
    };
    dune = 
    {
      pname = "dune";
      version = "3.4.1";
      src = pkgs.fetchurl 
      {
        url = "https://github.com/ocaml/dune/releases/download/3.4.1/dune-3.4.1.tbz";
        sha256 = "1if6805xrkql04xg42r8mjrhmjzn16fzrmarzwkcq261zwya77r9";
      };
      opamInputs = 
      {
        inherit (selection) base-unix
        base-threads;
        ocamlfind-secondary = selection.ocamlfind-secondary or null;
        ocaml = selection.ocaml or null;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/dune/dune.3.4.1";
        hash = "sha256:1f4s1aqck49fyiznhwy85s2q8ywzfvd9505svv6bglfi1sa816wx";
      };
    };
    dune-configurator = 
    {
      pname = "dune-configurator";
      version = "3.4.1";
      src = pkgs.fetchurl 
      {
        url = "https://github.com/ocaml/dune/releases/download/3.4.1/dune-3.4.1.tbz";
        sha256 = "1if6805xrkql04xg42r8mjrhmjzn16fzrmarzwkcq261zwya77r9";
      };
      opamInputs = 
      {
        inherit (selection) ocaml dune csexp base-unix;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/dune-configurator/dune-configurator.3.4.1";
        hash = "sha256:1j0cbcbbczdnvqg9gnk4hbg3hxama6bsdycw7p9y9zza5mqg05xl";
      };
    };
    fmt = 
    {
      pname = "fmt";
      version = "0.9.0";
      src = pkgs.fetchurl 
      {
        url = "https://erratique.ch/software/fmt/releases/fmt-0.9.0.tbz";
        sha256 = "0q8j2in2473xh7k4hfgnppv9qy77f2ih89yp6yhpbp92ba021yzi";
      };
      opamInputs = 
      {
        inherit (selection) topkg ocamlfind ocamlbuild
        ocaml;
        cmdliner = selection.cmdliner or null;
        base-unix = selection.base-unix or null;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/fmt/fmt.0.9.0";
        hash = "sha256:1czh5i3i4mkf9xfasji3v7n821qmnnandlklh67ali0x87brldny";
      };
    };
    it-is-test = 
    {
      pname = "it-is-test";
      version = "0.0.0";
      src = self.directSrc "it-is-test";
      opamInputs = 
      {
        inherit (selection) lwt dune;
      };
      opamSrc = "it-is-test.opam";
    };
    lwt = 
    {
      pname = "lwt";
      version = "5.6.1";
      src = pkgs.fetchurl 
      {
        url = "https://github.com/ocsigen/lwt/archive/5.6.1.tar.gz";
        sha256 = "1837iagnba58018ag82c9lwaby01c031547n08jjyj8q5q6lfjgb";
      };
      opamInputs = 
      {
        inherit (selection) ocplib-endian ocaml dune-configurator dune
        cppo;
        conf-libev = selection.conf-libev or null;
        base-unix = selection.base-unix or null;
        base-threads = selection.base-threads or null;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/lwt/lwt.5.6.1";
        hash = "sha256:0y6rif2d9ggd7mwv4hipawn8jjfn4vdk57i6zld2izqpj6f6m9kc";
      };
    };
    ocaml = 
    {
      pname = "ocaml";
      version = "4.13.1";
      src = null;
      opamInputs = 
      {
        inherit (selection)
        ocaml-config;
        ocaml-variants = selection.ocaml-variants or null;
        ocaml-system = selection.ocaml-system or null;
        ocaml-base-compiler = selection.ocaml-base-compiler or null;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/ocaml/ocaml.4.13.1";
        hash = "sha256:12aajj2hc636jr6wbv4vba8pmjdndbcvnw7q35gj4agxmrjspziw";
      };
    };
    ocaml-base-compiler = 
    {
      pname = "ocaml-base-compiler";
      version = "4.13.1";
      src = pkgs.fetchurl 
      {
        url = "https://github.com/ocaml/ocaml/archive/4.13.1.tar.gz";
        sha256 = "1i7ad8lh5l74wb3yzmhlv529wc75a5sjybzkad7wdl8zrj47jk0r";
      };
      opamInputs = {
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/ocaml-base-compiler/ocaml-base-compiler.4.13.1";
        hash = "sha256:069i5vsndd9lsvdm5wk898nfnc85ww7459nibjg6881ww43w8ck1";
      };
    };
    ocaml-config = 
    {
      pname = "ocaml-config";
      version = "2";
      src = null;
      opamInputs = 
      {
        ocaml-variants = selection.ocaml-variants or null;
        ocaml-system = selection.ocaml-system or null;
        ocaml-base-compiler = selection.ocaml-base-compiler or null;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/ocaml-config/ocaml-config.2";
        hash = "sha256:0h0hgqq9mbywvqygppfdc50gf9ss8a97l4dgsv3hszmzh6gglgrg";
      };
    };
    ocaml-syntax-shims = 
    {
      pname = "ocaml-syntax-shims";
      version = "1.0.0";
      src = pkgs.fetchurl 
      {
        url = "https://github.com/ocaml-ppx/ocaml-syntax-shims/releases/download/1.0.0/ocaml-syntax-shims-1.0.0.tbz";
        sha256 = "1j7848khli4p7j8i2kmnvhdnhcwhy3zgdpf5ds5ic30ax69y3cl9";
      };
      opamInputs = {
                     inherit (selection) ocaml dune;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/ocaml-syntax-shims/ocaml-syntax-shims.1.0.0";
        hash = "sha256:0qnm1db0298yqcn6j9fmb0l4gr5nhcar8plskj39917invyamgd2";
      };
    };
    ocamlbuild = 
    {
      pname = "ocamlbuild";
      version = "0.14.1";
      src = pkgs.fetchurl 
      {
        url = "https://github.com/ocaml/ocamlbuild/archive/refs/tags/0.14.1.tar.gz";
        sha256 = "0ml2y3dqhhbwlf94l3jgz6gfhhfp41qaf1sjm8p8c37q1vzpj4jf";
      };
      opamInputs = {
                     inherit (selection) ocaml;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/ocamlbuild/ocamlbuild.0.14.1";
        hash = "sha256:04ws6wbbsv56r4b6f29514inn77d91gb6sa8z62bxkswk1s1r1fn";
      };
    };
    ocamlfind = 
    {
      pname = "ocamlfind";
      version = "1.9.5";
      src = pkgs.fetchurl 
      {
        url = "http://download.camlcity.org/download/findlib-1.9.5.tar.gz";
        sha256 = "0w9578j1561f5gi51sn2jgxm3kh3sn88cpannhdkqcdg1kk08iqd";
      };
      opamInputs = 
      {
        inherit (selection) ocaml;
        graphics = selection.graphics or null;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/ocamlfind/ocamlfind.1.9.5";
        hash = "sha256:028mi76rmi831jkpffphshyjnvm58gym4ksqz1faibryhq35fcjg";
      };
    };
    ocplib-endian = 
    {
      pname = "ocplib-endian";
      version = "1.2";
      src = pkgs.fetchurl 
      {
        url = "https://github.com/OCamlPro/ocplib-endian/archive/refs/tags/1.2.tar.gz";
        sha256 = "085kskr0cxcnv2d62n3jq1r273p7giisy56zfl26mm7amvl79blp";
      };
      opamInputs = 
      {
        inherit (selection) ocaml dune cppo base-bytes;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/ocplib-endian/ocplib-endian.1.2";
        hash = "sha256:1jldvb471gyhkrzwfvqg722l3a8dc37hhhyas66skjzfmqyi2pnh";
      };
    };
    re = 
    {
      pname = "re";
      version = "1.10.4";
      src = pkgs.fetchurl 
      {
        url = "https://github.com/ocaml/ocaml-re/releases/download/1.10.4/re-1.10.4.tbz";
        sha256 = "0z3lracww84cswj0a4s28x987sk28c7h2j87hb3iv6xa011kxsw3";
      };
      opamInputs = {
                     inherit (selection) seq ocaml dune;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/re/re.1.10.4";
        hash = "sha256:00918wlxkkbj8dwpiwpyyvc8falk4ddrf0pxn5v2kahc2jl251vg";
      };
    };
    seq = 
    {
      pname = "seq";
      version = "base";
      src = null;
      opamInputs = {
                     inherit (selection) ocaml;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/seq/seq.base";
        hash = "sha256:1vm8mk6zm2q3fwnkprl6jib048zr4ysldw0bl74x6wwbxj0vx6k9";
      };
    };
    stdlib-shims = 
    {
      pname = "stdlib-shims";
      version = "0.3.0";
      src = pkgs.fetchurl 
      {
        url = "https://github.com/ocaml/stdlib-shims/releases/download/0.3.0/stdlib-shims-0.3.0.tbz";
        sha256 = "0jnqsv6pqp5b5g7lcjwgd75zqqvcwcl5a32zi03zg1kvj79p5gxs";
      };
      opamInputs = {
                     inherit (selection) ocaml dune;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/stdlib-shims/stdlib-shims.0.3.0";
        hash = "sha256:1hwyzzcx7clz4p58fj3n6frq2srbxdmhmxxd6n6mpw9gj2vs6yiw";
      };
    };
    topkg = 
    {
      pname = "topkg";
      version = "1.0.5";
      src = pkgs.fetchurl 
      {
        url = "https://erratique.ch/software/topkg/releases/topkg-1.0.5.tbz";
        sha256 = "1iyinmcfqpprk7k4cc51nqgypayprbj4larwcfqw86k5dri84825";
      };
      opamInputs = 
      {
        inherit (selection) ocamlfind ocamlbuild ocaml;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/topkg/topkg.1.0.5";
        hash = "sha256:04vg4zic7f6zk44vkvqw2fcr562hl7d0gklv3vgphk4n3bnqbcyy";
      };
    };
    uutf = 
    {
      pname = "uutf";
      version = "1.0.3";
      src = pkgs.fetchurl 
      {
        url = "https://erratique.ch/software/uutf/releases/uutf-1.0.3.tbz";
        sha256 = "0s05r8ggp1g97zq4rnvbxzj22pv8ld0k5wsdw662jw0y7mhsawl7";
      };
      opamInputs = 
      {
        inherit (selection) topkg ocamlfind ocamlbuild
        ocaml;
        cmdliner = selection.cmdliner or null;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/uutf/uutf.1.0.3";
        hash = "sha256:1x57h3bc68rsm2kd18wjbkfjk67shak6jgplp7paw97faqgmgx3x";
      };
    };
  };
}

