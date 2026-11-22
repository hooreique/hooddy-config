{
  services.commut = {
    enable = true;
    domain = "commut.hooreique.com";
    port = 3000;
  };
  hooddy.services.commut.healthCheck = {
    url = "http://127.0.0.1:3000/api/build-info";
    timeoutSeconds = 15;
  };
}
