with (import <nixpkgs> {});
let
  gems = bundlerEnv {
    name = "httparty";
    inherit ruby;
    gemdir = ./.;
  };
in stdenv.mkDerivation {
  name = "your-package";
  buildInputs = [gems ruby];
}
