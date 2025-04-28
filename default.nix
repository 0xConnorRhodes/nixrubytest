{ stdenv, bundlerEnv, ruby }:
let
  gems = bundlerEnv {
    name = "your-package";
    inherit ruby_3_4;
    gemdir  = ./.;
  };
in stdenv.mkDerivation {
  name = "your-package";
  src = ./.;
  buildInputs = [gems ruby_3_4];
  installPhase = ''
    mkdir -p $out
    cp -r $src $out
  '';
}
