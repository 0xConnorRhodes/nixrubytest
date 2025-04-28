with (import <nixpkgs> {});
let
  gems = bundlerEnv {
    name = "httparty";
    inherit ruby;
    gemdir = ./.;
  };
in stdenv.mkDerivation {
  name = "httparty";
  buildInputs = [gems ruby];
}
