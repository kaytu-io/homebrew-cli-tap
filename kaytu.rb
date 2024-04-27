class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "0.3.39"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.39/kaytu_0.3.39_darwin_amd64.tar.gz"
    sha256 "ceb18404de7547de874be2581ea019a3f45c88b4bd190f39c9cc9d88629898b3"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.39/kaytu_0.3.39_darwin_arm64.tar.gz"
    sha256 "f887e4c1cb84432e48aeda4acf5e37a848604755f55211a1f0df5a20db4257e5"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.39/kaytu_0.3.39_linux_arm64.tar.gz"
    sha256 "deb7f5a6f10bc93b47ce067eb418e8f13eaacaf61044df37e46867e98fbf46b0"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.39/kaytu_0.3.39_linux_amd64.tar.gz"
    sha256 "27e3121b475e35b83f50d37a40f5fbc70c62292f2a640b4bee369f2f7fbd77a3"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end