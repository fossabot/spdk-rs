{ crossSystem ? null }:

let
  sources = import ./nix/sources.nix;
  pkgs = import sources.nixpkgs {
    overlays = [
      (_: _: { inherit sources; })
      (import ./nix/overlay.nix {
        inherit })
          ];
        inherit crossSystem;
      };
      in
      pkgs
