with import <nixpkgs> {};

let gems = bundlerEnv {
    name = "gems";
    inherit ruby;
    gemdir = ./.;
  };
in 
  mkShell { 
    packages = [ gems gems.wrappedRuby ]; 
  }
