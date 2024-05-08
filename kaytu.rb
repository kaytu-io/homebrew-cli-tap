class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "0.6.1"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.6.1/kaytu_0.6.1_darwin_amd64.tar.gz"
    sha256 "926c8f19935f3859d3af812e463a77a376d0614224c0e55909fa17a990a24b4b"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.6.1/kaytu_0.6.1_darwin_arm64.tar.gz"
    sha256 "59ce1c4006c34630387c5cb9248140fb4cfbcc1b7f8930e417f42248a466f9a3"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.6.1/kaytu_0.6.1_linux_arm64.tar.gz"
    sha256 "1f3baf2fd31dbff5848a394f453c89d9ec0cc93e75c26d5e2247267b4d6970ab"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.6.1/kaytu_0.6.1_linux_amd64.tar.gz"
    sha256 "a415f8b975d51024c59c708aec71cf0e0311551f62a26bf15fd5fc438b4698b1"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end