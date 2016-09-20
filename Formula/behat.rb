require File.expand_path("../../Abstract/abstract-php-phar", __FILE__)

class Behat < AbstractPhpPhar
  init
  desc "behavior-driven development framework"
  homepage "http://behat.org/"
  url "https://github.com/Behat/Behat/releases/download/v3.2.0/behat.phar"
  version "3.2.0"
  sha256 "9057af29e6bfd0d858a6228b55701a032237f5739ba07bcdb1634f55555ed78b"

  bottle do
    cellar :any_skip_relocation
    sha256 "1eb06442283f593d321e1e06645d9bdd54439f47a524c2b149ce096ccecc2c8b" => :el_capitan
    sha256 "bb69a6e6b65f8bfbfeafabfa763c0658d4677c9459eff538b18b4e991f0061ad" => :yosemite
    sha256 "d05905075b0ece1cf4d92e46961d1ec0401279b172d77226ad6fabed1921a8bf" => :mavericks
  end

  test do
    system "behat", "--version"
  end
end
