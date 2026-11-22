{
  hooddy.httpPort = 8080;
  hooddy.httpsPort = 8443;

  services.commut = {
    enable = true;
    domain = "commut.hooreique.com";
    port = 3000;
  };
  hooddy.services.commut.healthCheck = {
    url = "http://127.0.0.1:3000/api/build-info";
    timeoutSeconds = 15;
  };

  services.bukupan = {
    enable = true;
    domain = "bukupan.hooreique.com";
    port = 3001;
    database = "/home/song/.local/share/bukupan/board.sqlite";
  };

  services.buku-journal = {
    enable = true;
    domain = "buku-journal.hooreique.com";
    port = 3002;
    journalDir = "/home/song/.local/share/buku-journal/journal";
  };
}
