class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "0.7.1"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.7.1/kaytu_0.7.1_darwin_amd64.tar.gz"
    sha256 "3b3559fb4abb5b54cf6930b3ae200c4d09a5c6140a4c415a77f58f58e4238d53"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.7.1/kaytu_0.7.1_darwin_arm64.tar.gz"
    sha256 "1bb2472529cf328e8961dfd166adfa70e7157b61e250cb76cb541c3a8ffc813b"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.7.1/kaytu_0.7.1_linux_arm64.tar.gz"
    sha256 "862fdd9e5c20de835282ca6bba9e71dd15b570d78989777a17c312b66ee5f59c"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.7.1/kaytu_0.7.1_linux_amd64.tar.gz"
    sha256 "ec02d6f30406613f0706c498584f0fe3a539157ff7f7965d1504a1ddee805b84"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end