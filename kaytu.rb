class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "0.6.2"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.6.2/kaytu_0.6.2_darwin_amd64.tar.gz"
    sha256 "c19bdd34e3acf5af8cad3abf0c8ce2ad288533cafacbf06eb89512c9e244e9a9"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.6.2/kaytu_0.6.2_darwin_arm64.tar.gz"
    sha256 "86e6a59d15069c4bef0cd530f3253ddb65ae518734190ccbce8b3c7b2ec28943"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.6.2/kaytu_0.6.2_linux_arm64.tar.gz"
    sha256 "697094c0eb4aa964ea49d9ce20d07f61a10c3ed28ea2416bbd98450814136625"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.6.2/kaytu_0.6.2_linux_amd64.tar.gz"
    sha256 "53aea36b3c4143f4a27c87efca815fec1de84bd6679df87db7eb45c4028b6543"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end