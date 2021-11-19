{ pkgs ? import <nixpkgs> { } }:

with pkgs;

mkShell { buildInputs = [ python2 nodejs yarn ]; }
