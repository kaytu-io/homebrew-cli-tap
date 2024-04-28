class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "0.3.50"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.50/kaytu_0.3.50_darwin_amd64.tar.gz"
    sha256 "14bdcd0c19553ef0f089ec40c9258c297a81c98b8e4c7e8888b23a62831f83dc"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.50/kaytu_0.3.50_darwin_arm64.tar.gz"
    sha256 "ac9432c99b0a22931dbf224fbff44611728a9123dd7c653a15117a5ec7ada2d4"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.50/kaytu_0.3.50_linux_arm64.tar.gz"
    sha256 "f374559bc38391cfb78907ff6fb3e4a8985d352584230df2ffe123725c7deca7"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.50/kaytu_0.3.50_linux_amd64.tar.gz"
    sha256 "794d292548ff9a37d8084e1be8ad2de6ef9211500585acdf9848a3b60f01ff73"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end