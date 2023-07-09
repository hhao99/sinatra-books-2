{ pkgs ? import <nixpkgs> {}, mkShell ? pkgs.mkShell, }:
mkShell rec {
    buildInputs = with pkgs; [
        ruby_3_2
        sqlite
        nodejs
        yarn
    ];

    shellHooks = ''
        gem install bunlder
        bundle install
        ''; 
}