{ pkgs ? import <nixpkgs> { } }:

with pkgs;

mkShell { buildInputs = [ python2 nodejs-10_x yarn ]; }
