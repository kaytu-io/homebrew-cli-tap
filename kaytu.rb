class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "0.3.60"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.60/kaytu_0.3.60_darwin_amd64.tar.gz"
    sha256 "bd042ab63cb454968ed0df4532b13dddb0c1dbbad5693cb89b0f40fdc6551172"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.60/kaytu_0.3.60_darwin_arm64.tar.gz"
    sha256 "35b014a463d2f1e20efe1fcdb15860e413ce6c1a2044a45d0d40a8f492a7a383"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.60/kaytu_0.3.60_linux_arm64.tar.gz"
    sha256 "d63bf8b59fdccbb1393681a4becca5534c898d020c574b801585b87c705792a0"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.60/kaytu_0.3.60_linux_amd64.tar.gz"
    sha256 "a697c4135d1fad6f30aff662199ae533b35b72aed54d6f3b04111903bef866bf"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end