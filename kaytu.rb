class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "0.6.3"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.6.3/kaytu_0.6.3_darwin_amd64.tar.gz"
    sha256 "0e1ae068e38557f401af565a6dd004131a607e3e92692de64d11bb388fc47460"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.6.3/kaytu_0.6.3_darwin_arm64.tar.gz"
    sha256 "bb97e5846c87faa0734433865745a9fd9c8c7869cc9de26e4da7c2913afb1293"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.6.3/kaytu_0.6.3_linux_arm64.tar.gz"
    sha256 "6ab7175e7f2b6df62c159389b5d302ca5376b5739fc85f33ff6a80125bf627cc"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.6.3/kaytu_0.6.3_linux_amd64.tar.gz"
    sha256 "04cadad76c02b47d50f7dc0739c22127730d545da0b57f15f7cab8a064bc74a6"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end