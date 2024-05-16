class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "0.8.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.8.0/kaytu_0.8.0_darwin_amd64.tar.gz"
    sha256 "a03dac346fc6c12ac40cfdb15eeb164fd8a439e2400f4eb2c9b5915718aad140"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.8.0/kaytu_0.8.0_darwin_arm64.tar.gz"
    sha256 "8e3f9071ca68db2d845616db49f8a9d80d7f879242a23e9ff84714147e9967f6"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.8.0/kaytu_0.8.0_linux_arm64.tar.gz"
    sha256 "beb2e8a56d9ba255195e351040d5c725e109750a2b4bc496c5792c93d1dad4d8"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.8.0/kaytu_0.8.0_linux_amd64.tar.gz"
    sha256 "9550b7276f9441c95d54f3e274e059949ada3a8491a8906d9a53f0f907ea2970"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end