class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "0.3.52"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.52/kaytu_0.3.52_darwin_amd64.tar.gz"
    sha256 "9d08bdd9bb74b1bb13f85b7f635ec1f0fdda00987641f54b59e30eb276cbccf5"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.52/kaytu_0.3.52_darwin_arm64.tar.gz"
    sha256 "8567bbcf46998e235e4ced61cfe4e9b0dc9d1eac0e97426680a74f929d877a07"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.52/kaytu_0.3.52_linux_arm64.tar.gz"
    sha256 "b39c988c6356f37d22bc382258aa2cb0c303125807dc679be532076dec395a8e"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.52/kaytu_0.3.52_linux_amd64.tar.gz"
    sha256 "0ffbc7e8138ebe5fb375aeeee47728ec0b52bed6b887a1a31858f50debde6f42"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end