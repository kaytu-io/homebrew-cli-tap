class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "0.3.43"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.43/kaytu_0.3.43_darwin_amd64.tar.gz"
    sha256 "277fbdb59cea8c847ff961fb93e26fc482db480241de725ba8a103ef9428812d"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.43/kaytu_0.3.43_darwin_arm64.tar.gz"
    sha256 "e48e3e076661fccf71ef9fc5bfc6e9d2eba13a479230d70640aaec1926c4c565"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.43/kaytu_0.3.43_linux_arm64.tar.gz"
    sha256 "8ae614be9e1f53f7b04250c1f2fd8be7f66651884da342471b9980cd414b0386"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.43/kaytu_0.3.43_linux_amd64.tar.gz"
    sha256 "3a9e9bc2a54b9cc6df00c9fa4dc4bcf3e43fe83177876d7c824477704cc5a668"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end