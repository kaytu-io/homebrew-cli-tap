class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "0.3.33"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.33/kaytu_0.3.33_darwin_amd64.tar.gz"
    sha256 "ea7cd121abfe1e844bbe6f5f2dc146a8860463a00120d615e65acb5f80663914"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.33/kaytu_0.3.33_darwin_arm64.tar.gz"
    sha256 "802d257e349e1efd8b9bf9f3601df961ce68d13ceb55217e626f3140ec95ccb0"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.33/kaytu_0.3.33_linux_arm64.tar.gz"
    sha256 "49d4e89863a30cbe8e9e1b9baceb672d1054662bb78b9dbf83a79d304c4bc33a"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.33/kaytu_0.3.33_linux_amd64.tar.gz"
    sha256 "fb7f6aaa5346dc842176e09aed9450a412ee33d5d6c39364a1a2b6aab2f11be5"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end