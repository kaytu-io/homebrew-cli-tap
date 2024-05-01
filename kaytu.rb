class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "0.5.5"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.5.5/kaytu_0.5.5_darwin_amd64.tar.gz"
    sha256 "d8863687d2190081c12d414a938afd2668c4f327b354b2a1dad3fab7ab21c747"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.5.5/kaytu_0.5.5_darwin_arm64.tar.gz"
    sha256 "8e7113b31bdb152bad4ae8d6d35b0263f183c00ade816eb5ecee60637ac70fcb"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.5.5/kaytu_0.5.5_linux_arm64.tar.gz"
    sha256 "e1d0b19c445b98cfaa5da8f06f10ff3b709526ea6841b8d51576771ec5dadede"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.5.5/kaytu_0.5.5_linux_amd64.tar.gz"
    sha256 "176d020510ecee0eea34b154a09398a95cb13d3bfc8a1a280e3ef511b90aad0d"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end