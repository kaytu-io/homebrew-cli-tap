class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "0.8.6"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.8.6/kaytu_0.8.6_darwin_amd64.tar.gz"
    sha256 "3c795fe5b7d2b22f3dc8665b693eee8e8861af6f88614de8730f364d0376746d"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.8.6/kaytu_0.8.6_darwin_arm64.tar.gz"
    sha256 "d9ca048191655adaf36a40b06c1e63e8507bde79aff0f8f59dc6616d51120685"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.8.6/kaytu_0.8.6_linux_arm64.tar.gz"
    sha256 "5122f2f729c7f1abdc226ce4cb3e68965b2c0b25efe2f858825298d5e80849ae"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.8.6/kaytu_0.8.6_linux_amd64.tar.gz"
    sha256 "bb4363f1ad0323747bb94487e444f6d6cb792288bbe8c58f259abc62e6ff2f7c"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end