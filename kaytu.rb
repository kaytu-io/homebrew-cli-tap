class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "0.3.34"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.34/kaytu_0.3.34_darwin_amd64.tar.gz"
    sha256 "d5060d0aa77fe55d3aac16451b555cc5ccea1bd3103e69fe9386cb3623cd7fb9"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.34/kaytu_0.3.34_darwin_arm64.tar.gz"
    sha256 "40c1d2f4a580b0bb14ad4983bcd2473a8640b7adb8dd9555db9dc8be3f91b7d1"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.34/kaytu_0.3.34_linux_arm64.tar.gz"
    sha256 "125a98996e5fdb63b13d3b7b9bc50202e044641bc934bb1c182d712136c464d4"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.34/kaytu_0.3.34_linux_amd64.tar.gz"
    sha256 "ceb08169e85d7f9733f36f3c353358d1ab564dea9ba3aaf1603e978c1ab30b4e"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end