{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  packages = with pkgs; [
    cowsay
    (ruby.withPackages (ruby-pkgs: with ruby-pkgs; [
      pry
      dotenv
      highline
      (callPackage ./. { })
    ]))
  ];
}
