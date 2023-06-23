{ pkgs ? import <nixpkgs> { } }:

pkgs.stdenv.mkDerivation rec {
  pname = "cosmic-epoch";
  version = "0.1.0";

  src = ./cosmic-sysext;

  installPhase = ''
    cp -r usr $out
  '';
}
