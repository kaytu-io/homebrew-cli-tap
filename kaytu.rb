class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "0.3.38"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.38/kaytu_0.3.38_darwin_amd64.tar.gz"
    sha256 "9798b3c7ba06f74cdb2262401b62496aafbe5a997918cecc564e9181aa8a5b6a"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.38/kaytu_0.3.38_darwin_arm64.tar.gz"
    sha256 "c6fa3b889813fd88907f7f40660c84702b916eef39e905081c3a0489fdf33064"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.38/kaytu_0.3.38_linux_arm64.tar.gz"
    sha256 "4b4313cb910dd49b1754a591beddf0546947b114d8e07246163bce0ebd82d251"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.38/kaytu_0.3.38_linux_amd64.tar.gz"
    sha256 "16676475338b45744b2c50c6d5405c7bc82ed1a49c34d997956494b3284d9126"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end