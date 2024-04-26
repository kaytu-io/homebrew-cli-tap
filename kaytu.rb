class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "0.3.32"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.32/kaytu_0.3.32_darwin_amd64.tar.gz"
    sha256 "6084448852edb39c3e6f78443a47b34deb220ff42bebdd1550f6d624f25f9d5f"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.32/kaytu_0.3.32_darwin_arm64.tar.gz"
    sha256 "79cdf272024b70828ae615fb5c7eb2b43333a1872457cf7b4878206d19bee8a2"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.32/kaytu_0.3.32_linux_arm64.tar.gz"
    sha256 "0ef211b239baf49812b800eaf61d0fa89bc958907cd03db943d775c3fb3caf8c"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.32/kaytu_0.3.32_linux_amd64.tar.gz"
    sha256 "b584d24d3a5a1db35369d3b565e43a915d8d72a6a90fc409d406d34dc5061691"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end