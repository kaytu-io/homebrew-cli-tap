class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "0.3.56"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.56/kaytu_0.3.56_darwin_amd64.tar.gz"
    sha256 "791f7c76a4cd87efa0774f1bb379a1c95468d82006b4c053e676c27c593aa220"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.56/kaytu_0.3.56_darwin_arm64.tar.gz"
    sha256 "d9e2a366389e4fbd306fcc47fd0caf6eb532e5e4357d501b6755d596c214888c"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.56/kaytu_0.3.56_linux_arm64.tar.gz"
    sha256 "fcd936ca5936ad7cc6a2028183ed0e5616d9e18e7f5d844e9f7e3e21203e1699"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.56/kaytu_0.3.56_linux_amd64.tar.gz"
    sha256 "19d3887256c141fbf3f678dcb4ca10282837f15b11ddb81d946e7b8723e878a4"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end