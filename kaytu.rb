class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "0.3.45"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.45/kaytu_0.3.45_darwin_amd64.tar.gz"
    sha256 "315b0252bbb9914a12257ca9ebb2a7ef1cf1c40fc8fe7efebb6781c1662d4038"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.45/kaytu_0.3.45_darwin_arm64.tar.gz"
    sha256 "4fcf4ddd090fecab5ea7b50ec77b73fb3bcb6a1f364c103edadb1ca3b1278d07"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.45/kaytu_0.3.45_linux_arm64.tar.gz"
    sha256 "6d06f1e01ad733c296a396473a7f5f9eb2f1fcff1cdb64e715aaaaeec0192720"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.45/kaytu_0.3.45_linux_amd64.tar.gz"
    sha256 "41bf77a25a3bb754efa6ca64b987f619cb2f6a2d3e3bbb9307ba5207f6f5f23f"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end