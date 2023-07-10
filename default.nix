{ pkgs ? import <nixpkgs> {}, mkShell ? pkgs.mkShell, }:
mkShell rec {
    buildInputs = with pkgs; [
        ruby_3_1
        sqlite
        nodejs
        yarn
    ];

    shellHooks = ''
        gem install bunlder
        bundle install
        ''; 
}