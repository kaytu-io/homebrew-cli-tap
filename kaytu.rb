class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "0.7.9"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.7.9/kaytu_0.7.9_darwin_amd64.tar.gz"
    sha256 "b744b3696f2f48813e95cda705847e2fc9008ec515f7f358209ec78d9490a2d3"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.7.9/kaytu_0.7.9_darwin_arm64.tar.gz"
    sha256 "e8bd517d6b8f01daf7bb1abf4e3b6f0f4f1d501ec907dda21d89a485b1e3cc23"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.7.9/kaytu_0.7.9_linux_arm64.tar.gz"
    sha256 "c9126f8d2a56f573424025438733935f8c1c448250bc9afcf3c1f4f7f795e729"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.7.9/kaytu_0.7.9_linux_amd64.tar.gz"
    sha256 "5ab353b6dbfde718094d95af54f1e011ffcb96b3e18213090e55c33799b98259"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end