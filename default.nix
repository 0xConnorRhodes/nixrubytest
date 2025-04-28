{
  lib,
  bundlerApp,
  bundlerUpdateScript,
}:

bundlerApp {
  pname = "httparty";
  gemdir = ./.;
  exes = [ "httparty" ];

  passthru.updateScript = bundlerUpdateScript "pry";
}
