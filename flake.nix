{
  description = "hooreique.com user services";

  inputs = {
    hooddy.url = "github:hooreique/hooddy";
    commut.url = "github:hooreique/commut";
    bukupan.url = "github:hooreique/bukupan";
    buku-journal.url = "github:hooreique/buku-journal";
  };

  outputs =
    {
      hooddy,
      commut,
      bukupan,
      buku-journal,
      ...
    }:
    {
      hooddyConfigurations.default = hooddy.lib.hooddyConfiguration {
        system = "aarch64-linux";
        modules = [
          {
            hooddy.httpPort = 8080;
            hooddy.httpsPort = 8443;
          }
          commut.hooddyModules.default
          ./commut.nix
          bukupan.hooddyModules.default
          ./bukupan.nix
          buku-journal.hooddyModules.default
          ./buku-journal.nix
        ];
      };
    };
}
