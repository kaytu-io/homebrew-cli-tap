class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "0.3.36"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.36/kaytu_0.3.36_darwin_amd64.tar.gz"
    sha256 "24fe2dfe3a91ea713b2fa138beaa2bb88d7319833101d2b41fced2630696dd2d"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.36/kaytu_0.3.36_darwin_arm64.tar.gz"
    sha256 "2fc08d295d65b5e067eee299471e8135327fce7447a7ffefa7c730e708bca5c6"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.36/kaytu_0.3.36_linux_arm64.tar.gz"
    sha256 "7a3207d0aa663df8a6632dfeaab1f6809f89bb610918923c15a178de652c7161"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.36/kaytu_0.3.36_linux_amd64.tar.gz"
    sha256 "c4a146ccb2a8b85bd056a7f4ca5d389661ad2602c1fad3183f13e499117a71b4"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end