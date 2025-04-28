with import <nixpkgs> { };
ruby.withPackages (
  ps: with ps; [
    pry
    dotenv
    (callPackage ./. { })
  ]
)
