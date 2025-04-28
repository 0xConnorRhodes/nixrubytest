{ pkgs ? import <nixpkgs> { } }:
with pkgs;
with stdenv;
let
  app = bundlerEnv {
    name = "httparty";
    ruby = ruby_3_4;
    gemdir = ./.;
  };
in mkShell {
  name = "bundler-shell";
  buildInputs = [app bundix ruby_3_4];
  packages = [ 
    pkgs.cowsay 
    pkgs.rubyPackages_3_4.pry
    app
  ];
}

