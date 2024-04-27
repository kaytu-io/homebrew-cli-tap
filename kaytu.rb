class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "0.3.40"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.40/kaytu_0.3.40_darwin_amd64.tar.gz"
    sha256 "e85177a605e7e4afd8a8068de90acd5e9f88f0048f9eb048744f26f62983ec8b"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.40/kaytu_0.3.40_darwin_arm64.tar.gz"
    sha256 "8bb93ad733f12b011a8603c47d563156ba6ef23e9dc1536cb5af17222f472ad1"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.40/kaytu_0.3.40_linux_arm64.tar.gz"
    sha256 "e97f6169ba4b1a6cabb07c6043a4f613e2252aa2c37d358b9bd273d4f12e1a39"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.40/kaytu_0.3.40_linux_amd64.tar.gz"
    sha256 "f790df93ce890249908e1bb3b7d538b88f2fe63efa730dea971e36274ba49ed3"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end