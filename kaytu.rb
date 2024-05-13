class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "0.7.8"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.7.8/kaytu_0.7.8_darwin_amd64.tar.gz"
    sha256 "72d20dcdf24995797632dafdcfd550d2359268578f7d221ec50026c7e0bef293"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.7.8/kaytu_0.7.8_darwin_arm64.tar.gz"
    sha256 "b1a2eeeb7d606ca1b1985fccb90ed16b8cd779bd07d7c5de2ae96fe6ebbcc16b"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.7.8/kaytu_0.7.8_linux_arm64.tar.gz"
    sha256 "7b3431fba797e864cd0d46e1fd1dea7b503dcaef15095aa82a400c44868b60df"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.7.8/kaytu_0.7.8_linux_amd64.tar.gz"
    sha256 "6eea42507a3ca57bb0ff510c74018108171c7afcbe52a4ca6de379bba0c22b98"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end