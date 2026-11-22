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
          commut.hooddyModules.default
          bukupan.hooddyModules.default
          buku-journal.hooddyModules.default
          ./hooddy.nix
        ];
      };
    };
}
