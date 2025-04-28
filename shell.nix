# with import <nixpkgs> { };
# ruby.withPackages (
#   ps: with ps; [
#     pry
#     dotenv
#     (callPackage ./. { })
#   ]
# )

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