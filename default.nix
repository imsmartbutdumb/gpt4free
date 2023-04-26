{ pkgs ? import <nixpkgs> {} }:

pkgs.dockerTools.buildImage {
  name = "my-app";
  tag = "latest";
  contents = ./.;
  config.Cmd = [ pkgs.nodejs-14_x.y.z/bin/node ./app.js ];
}
