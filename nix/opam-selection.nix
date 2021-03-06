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
          rev = "2de2614893192b1e81d00610a6c10294921e061e";
          sha256 = "0wmjvc246czhny9i6lmhbpvnnm159fhxbqx1i8zjdr23qpl8wayd";
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
    base = 
    {
      pname = "base";
      version = "v0.15.0";
      src = pkgs.fetchurl 
      {
        url = "https://ocaml.janestreet.com/ocaml-core/v0.15/files/base-v0.15.0.tar.gz";
        sha256 = "0gd5lq9474hbgzczb07pazqrbnnjjyfw8i9225bq95594i1swmw6";
      };
      opamInputs = 
      {
        inherit (selection) sexplib0 ocaml dune-configurator dune;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/base/base.v0.15.0";
        hash = "sha256:0q8a37jakmavnigwxnxykahrz4rvzm234ppnwmm0z1biimxp66yk";
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
    bigarray-compat = 
    {
      pname = "bigarray-compat";
      version = "1.1.0";
      src = pkgs.fetchurl 
      {
        url = "https://github.com/mirage/bigarray-compat/releases/download/v1.1.0/bigarray-compat-1.1.0.tbz";
        sha256 = "1m8q6ywik6h0wrdgv8ah2s617y37n1gdj4qvc86yi12winj6ji23";
      };
      opamInputs = {
                     inherit (selection) ocaml dune;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/bigarray-compat/bigarray-compat.1.1.0";
        hash = "sha256:1hq7lmh99p720plkbv1faqqz2xz4ff9g49kkpsryg9ws3ld8ry05";
      };
    };
    cppo = 
    {
      pname = "cppo";
      version = "1.6.8";
      src = pkgs.fetchurl 
      {
        url = "https://github.com/ocaml-community/cppo/archive/v1.6.8.tar.gz";
        sha256 = "0lxy4xkkkwgs1cj6d9lyzsqi9f6fc9r6cir5imi7yjqrpd86s1by";
      };
      opamInputs = 
      {
        inherit (selection) ocaml dune base-unix;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/cppo/cppo.1.6.8";
        hash = "sha256:0pzd8irqkkkpfgw8nq9d21z9rj5m3qlzixyb7ybfy4b1fwh3n8bp";
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
      version = "3.1.1";
      src = pkgs.fetchurl 
      {
        url = "https://github.com/ocaml/dune/releases/download/3.1.1/fiber-3.1.1.tbz";
        sha256 = "0q3bbarnkxglypw2w4rccs9fn093dgn0jdc7qx08i68vmda48j02";
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
        package = "packages/dune/dune.3.1.1";
        hash = "sha256:1ik4iy7xfwyk7f6ywqza6ckwk736f4mgp6q18jnazcrnk56md5wx";
      };
    };
    dune-configurator = 
    {
      pname = "dune-configurator";
      version = "3.1.1";
      src = pkgs.fetchurl 
      {
        url = "https://github.com/ocaml/dune/releases/download/3.1.1/fiber-3.1.1.tbz";
        sha256 = "0q3bbarnkxglypw2w4rccs9fn093dgn0jdc7qx08i68vmda48j02";
      };
      opamInputs = {
                     inherit (selection) ocaml dune csexp;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/dune-configurator/dune-configurator.3.1.1";
        hash = "sha256:1hbj4q7kdnjd5ankmm8k2yj5psn9nnf445ajb8yb3adfxiwjhzvm";
      };
    };
    it-is-test = 
    {
      pname = "it-is-test";
      version = "0.0.0";
      src = self.directSrc "it-is-test";
      opamInputs = 
      {
        inherit (selection) ocaml lwt dune;
      };
      opamSrc = "it-is-test.opam";
    };
    jane-street-headers = 
    {
      pname = "jane-street-headers";
      version = "v0.15.0";
      src = pkgs.fetchurl 
      {
        url = "https://ocaml.janestreet.com/ocaml-core/v0.15/files/jane-street-headers-v0.15.0.tar.gz";
        sha256 = "1r27r0bxxa0iaah5rm84lwhrmh784vfpmb6056hpv0p34rxs7r1l";
      };
      opamInputs = {
                     inherit (selection) ocaml dune;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/jane-street-headers/jane-street-headers.v0.15.0";
        hash = "sha256:134qp5ww1ws8k9i43sr13ivibsz88si142cdkllrcw9ib9d4aa5g";
      };
    };
    jst-config = 
    {
      pname = "jst-config";
      version = "v0.15.1";
      src = pkgs.fetchurl 
      {
        url = "https://github.com/janestreet/jst-config/archive/refs/tags/v0.15.1.tar.gz";
        sha256 = "06xlyg0cyvv742haypdjbl82b5h5mla9hhcg3q67csq1nfxyalvh";
      };
      opamInputs = 
      {
        inherit (selection) ppx_assert ocaml dune-configurator dune base;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/jst-config/jst-config.v0.15.1";
        hash = "sha256:03px4smpvwvqcvdn38jyjcfb2q41qpcgcyi8pj9ig7a76hzm5hrv";
      };
    };
    lwt = 
    {
      pname = "lwt";
      version = "5.5.0";
      src = pkgs.fetchurl 
      {
        url = "https://github.com/ocsigen/lwt/archive/refs/tags/5.5.0.tar.gz";
        sha256 = "15gr6nhhfjyh91v9chvm6j7vnp1hhc60y3plgvcgl5yl5k7xbbj9";
      };
      opamInputs = 
      {
        inherit (selection) seq result ocplib-endian ocaml mmap
        dune-configurator dune
        cppo;
        ocaml-syntax-shims = selection.ocaml-syntax-shims or null;
        conf-libev = selection.conf-libev or null;
        base-unix = selection.base-unix or null;
        base-threads = selection.base-threads or null;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/lwt/lwt.5.5.0";
        hash = "sha256:1gqprnl0g4fbj4s8d19dwf4x4hpnmf4pwvyrhkp0gjyy0m2i2lnl";
      };
    };
    mmap = 
    {
      pname = "mmap";
      version = "1.2.0";
      src = pkgs.fetchurl 
      {
        url = "https://github.com/mirage/mmap/releases/download/v1.2.0/mmap-1.2.0.tbz";
        sha256 = "1nvd2416aa6rzdmfwbknyb1402vqwm0falhsfyaglcp2r2msh0hn";
      };
      opamInputs = 
      {
        inherit (selection) ocaml dune bigarray-compat;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/mmap/mmap.1.2.0";
        hash = "sha256:0sh05spdbmikba0zrv2gwhmyw1v8nsnnf7i7rhlg1iim0ydbqni0";
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
    ocaml-compiler-libs = 
    {
      pname = "ocaml-compiler-libs";
      version = "v0.12.4";
      src = pkgs.fetchurl 
      {
        url = "https://github.com/janestreet/ocaml-compiler-libs/releases/download/v0.12.4/ocaml-compiler-libs-v0.12.4.tbz";
        sha256 = "0q3pl20pkx410gw9g4m26qq6dmzi9qan2dqlga6c2ifc6pnckjaf";
      };
      opamInputs = {
                     inherit (selection) ocaml dune;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/ocaml-compiler-libs/ocaml-compiler-libs.v0.12.4";
        hash = "sha256:1blynia10j8vyj559kcvc7ic69zq6qjjn092fcsjzfw6czd8ya2c";
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
    ocamlfind = 
    {
      pname = "ocamlfind";
      version = "1.9.3";
      src = pkgs.fetchurl 
      {
        url = "http://download.camlcity.org/download/findlib-1.9.3.tar.gz";
        sha256 = "0hfcwamcvinmww59b5i4yxbf0kxyzkp5qv3d1c7ybn9q52vgq463";
      };
      opamInputs = 
      {
        inherit (selection) ocaml;
        graphics = selection.graphics or null;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/ocamlfind/ocamlfind.1.9.3";
        hash = "sha256:1wq1lkw3rpgilprlakznsxxf60mcidn3fzi3vjrgjdrnnp9hvh19";
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
    ppx_assert = 
    {
      pname = "ppx_assert";
      version = "v0.15.0";
      src = pkgs.fetchurl 
      {
        url = "https://ocaml.janestreet.com/ocaml-core/v0.15/files/ppx_assert-v0.15.0.tar.gz";
        sha256 = "0rsr1yz2rs12w6qw0dz09dg3k2x2pfgd014fgp6nj993hhznapsf";
      };
      opamInputs = 
      {
        inherit (selection) ppxlib ppx_sexp_conv ppx_here ppx_compare
        ppx_cold ocaml dune base;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/ppx_assert/ppx_assert.v0.15.0";
        hash = "sha256:1ll9q69y6bj8s10qmkrmka10kd8zvkb50r1snaf2hfsldsn9qg31";
      };
    };
    ppx_base = 
    {
      pname = "ppx_base";
      version = "v0.15.0";
      src = pkgs.fetchurl 
      {
        url = "https://ocaml.janestreet.com/ocaml-core/v0.15/files/ppx_base-v0.15.0.tar.gz";
        sha256 = "181w7y2has8jsrqdsvd08q5nhnkx523vwsk3lg0cjix55qssvfyn";
      };
      opamInputs = 
      {
        inherit (selection) ppxlib ppx_sexp_conv ppx_hash ppx_enumerate
        ppx_compare ppx_cold ocaml dune;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/ppx_base/ppx_base.v0.15.0";
        hash = "sha256:0ilg603nkmn7mzvasyibhyalgw92w4lfgwpgwhwk7z50yrw3dqb7";
      };
    };
    ppx_cold = 
    {
      pname = "ppx_cold";
      version = "v0.15.0";
      src = pkgs.fetchurl 
      {
        url = "https://ocaml.janestreet.com/ocaml-core/v0.15/files/ppx_cold-v0.15.0.tar.gz";
        sha256 = "13gqmfw2sq80anag9bwpm35600l1fnfn7mh9cbj1291k84rsx7wb";
      };
      opamInputs = 
      {
        inherit (selection) ppxlib ocaml dune base;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/ppx_cold/ppx_cold.v0.15.0";
        hash = "sha256:1m38jiza7vdnkngw9nfz0rhk31yn206kycmnr87g6zx3mdp2k898";
      };
    };
    ppx_compare = 
    {
      pname = "ppx_compare";
      version = "v0.15.0";
      src = pkgs.fetchurl 
      {
        url = "https://ocaml.janestreet.com/ocaml-core/v0.15/files/ppx_compare-v0.15.0.tar.gz";
        sha256 = "11bkw7fgzfay8ws0piwphqip3y2lk2c9s2gil3zisnbvka92h1va";
      };
      opamInputs = 
      {
        inherit (selection) ppxlib ocaml dune base;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/ppx_compare/ppx_compare.v0.15.0";
        hash = "sha256:02y9vlqqqxq44lfwxq6as2wqqzilwqzky4dqykafbmn603mnv5y6";
      };
    };
    ppx_derivers = 
    {
      pname = "ppx_derivers";
      version = "1.2.1";
      src = pkgs.fetchurl 
      {
        url = "https://github.com/ocaml-ppx/ppx_derivers/archive/1.2.1.tar.gz";
        sha256 = "159vqy616ni18mn0dlv8c2y4h7mb4hahwjn53yrr59yyhzhmwndn";
      };
      opamInputs = {
                     inherit (selection) ocaml dune;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/ppx_derivers/ppx_derivers.1.2.1";
        hash = "sha256:1hj1ina0n7pgz16mrvijczapw75pd0hif0i18dpw7d1fyg2qr8py";
      };
    };
    ppx_enumerate = 
    {
      pname = "ppx_enumerate";
      version = "v0.15.0";
      src = pkgs.fetchurl 
      {
        url = "https://ocaml.janestreet.com/ocaml-core/v0.15/files/ppx_enumerate-v0.15.0.tar.gz";
        sha256 = "16yhk3xk2hskmlspb6mikmdp60qaypyiqgq9p17kxpial6fgpdfy";
      };
      opamInputs = 
      {
        inherit (selection) ppxlib ocaml dune base;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/ppx_enumerate/ppx_enumerate.v0.15.0";
        hash = "sha256:1yp6h8n9177zp1gxai5s8rpqv9affjafp98svgawhnw66g96653j";
      };
    };
    ppx_hash = 
    {
      pname = "ppx_hash";
      version = "v0.15.0";
      src = pkgs.fetchurl 
      {
        url = "https://ocaml.janestreet.com/ocaml-core/v0.15/files/ppx_hash-v0.15.0.tar.gz";
        sha256 = "048pim0xicj8j9whd5lnchf62788sk3w89h12aybbalk1xm6dfs5";
      };
      opamInputs = 
      {
        inherit (selection) ppxlib ppx_sexp_conv ppx_compare ocaml dune base;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/ppx_hash/ppx_hash.v0.15.0";
        hash = "sha256:18mhr158ky23cbriz2w4b5dj3xj55z9i2r5ifix9m8sq7zqqa6x7";
      };
    };
    ppx_here = 
    {
      pname = "ppx_here";
      version = "v0.15.0";
      src = pkgs.fetchurl 
      {
        url = "https://ocaml.janestreet.com/ocaml-core/v0.15/files/ppx_here-v0.15.0.tar.gz";
        sha256 = "1pyaw31j9n6r98ar947n3j2qj6rrszbdxr8jghk96j4ajdy05g65";
      };
      opamInputs = 
      {
        inherit (selection) ppxlib ocaml dune base;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/ppx_here/ppx_here.v0.15.0";
        hash = "sha256:12wgavjp9q0sbkymzzih9p4j80952dbh9djr0hpmx0by20dsr2in";
      };
    };
    ppx_inline_test = 
    {
      pname = "ppx_inline_test";
      version = "v0.15.0";
      src = pkgs.fetchurl 
      {
        url = "https://ocaml.janestreet.com/ocaml-core/v0.15/files/ppx_inline_test-v0.15.0.tar.gz";
        sha256 = "06w7l575wqw2zgvsfdlslwxd6ni1nbw9jhimd7zy5a64md0x2y1z";
      };
      opamInputs = 
      {
        inherit (selection) time_now ppxlib ocaml dune base;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/ppx_inline_test/ppx_inline_test.v0.15.0";
        hash = "sha256:15vx091zg41k0himh9s5n6bh13l23sm4zrbpmp6j50ra5gd16bks";
      };
    };
    ppx_optcomp = 
    {
      pname = "ppx_optcomp";
      version = "v0.15.0";
      src = pkgs.fetchurl 
      {
        url = "https://ocaml.janestreet.com/ocaml-core/v0.15/files/ppx_optcomp-v0.15.0.tar.gz";
        sha256 = "1vd6ra0f1cm1kiqdh0iyzh24bp0ndl3s2va5z0mrw3y8ngbp0kn4";
      };
      opamInputs = 
      {
        inherit (selection) stdio ppxlib ocaml dune base;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/ppx_optcomp/ppx_optcomp.v0.15.0";
        hash = "sha256:062wk4jw134j10nkmch4r5j18zizc4r2f0x1vdsbi9jzr9vzzl3n";
      };
    };
    ppx_sexp_conv = 
    {
      pname = "ppx_sexp_conv";
      version = "v0.15.1";
      src = pkgs.fetchurl 
      {
        url = "https://github.com/janestreet/ppx_sexp_conv/archive/refs/tags/v0.15.1.tar.gz";
        sha256 = "179f1iz504l008b3p3d9q2nj44wv7y31pc997x32m6aq1j2lfip3";
      };
      opamInputs = 
      {
        inherit (selection) sexplib0 ppxlib ocaml dune base;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/ppx_sexp_conv/ppx_sexp_conv.v0.15.1";
        hash = "sha256:17303ra9w8cngiaz0s9q6d8617vyfx2nlz1kb813bs0g4vnj27mf";
      };
    };
    ppxlib = 
    {
      pname = "ppxlib";
      version = "0.26.0";
      src = pkgs.fetchurl 
      {
        url = "https://github.com/ocaml-ppx/ppxlib/releases/download/0.26.0/ppxlib-0.26.0.tbz";
        sha256 = "1zbyh6pr6fih2c1p6gs8y0q0ag1kzs41z4pyama96qsqx9kpn4b3";
      };
      opamInputs = 
      {
        inherit (selection) stdlib-shims sexplib0 ppx_derivers
        ocaml-compiler-libs ocaml dune;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/ppxlib/ppxlib.0.26.0";
        hash = "sha256:1b94sf1xwgvi3mb2k4i8h3rx1qwvkqcg1nk3iwb5qmp2flbpzk6k";
      };
    };
    result = 
    {
      pname = "result";
      version = "1.5";
      src = pkgs.fetchurl 
      {
        url = "https://github.com/janestreet/result/releases/download/1.5/result-1.5.tbz";
        sha256 = "0cpfp35fdwnv3p30a06wd0py3805qxmq3jmcynjc3x2qhlimwfkw";
      };
      opamInputs = {
                     inherit (selection) ocaml dune;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/result/result.1.5";
        hash = "sha256:0ybmvlisfz5swvbcq855czz1ysv9zxmb79f1m0x8284hczmfm98f";
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
    sexplib0 = 
    {
      pname = "sexplib0";
      version = "v0.15.0";
      src = pkgs.fetchurl 
      {
        url = "https://ocaml.janestreet.com/ocaml-core/v0.15/files/sexplib0-v0.15.0.tar.gz";
        sha256 = "1fpg991n578m11r0ki4als4c76s3sp703b4khivx40v48402qill";
      };
      opamInputs = {
                     inherit (selection) ocaml dune;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/sexplib0/sexplib0.v0.15.0";
        hash = "sha256:1msz0hdj2gnk7makmqdp46v6995vv3y859vzd3qabdafm5rq4d82";
      };
    };
    stdio = 
    {
      pname = "stdio";
      version = "v0.15.0";
      src = pkgs.fetchurl 
      {
        url = "https://ocaml.janestreet.com/ocaml-core/v0.15/files/stdio-v0.15.0.tar.gz";
        sha256 = "0jsyg4jlp76d9gx1fngms6nfs7dcpsysdsvkywjq9a663n994wn3";
      };
      opamInputs = {
                     inherit (selection) ocaml dune base;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/stdio/stdio.v0.15.0";
        hash = "sha256:19z0wh8sm8ldwwpqq2hxn85b74z1g3jlkx7vfpqknm0pxhill7m1";
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
    time_now = 
    {
      pname = "time_now";
      version = "v0.15.0";
      src = pkgs.fetchurl 
      {
        url = "https://ocaml.janestreet.com/ocaml-core/v0.15/files/time_now-v0.15.0.tar.gz";
        sha256 = "1a6b1f55mwci1bd8w8vji0qn6wbs60jbwixvwgy4klx2blq57cqk";
      };
      opamInputs = 
      {
        inherit (selection) ppx_optcomp ppx_base ocaml jst-config
        jane-street-headers dune base;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/time_now/time_now.v0.15.0";
        hash = "sha256:1l6ffa9f0i1kpm2fgmhl2f63bbswd8sgzjbfgpcxkgxsivjgp6qf";
      };
    };
  };
}

