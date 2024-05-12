class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "0.7.3"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.7.3/kaytu_0.7.3_darwin_amd64.tar.gz"
    sha256 "fa83d4bc7a22422a5c2a58ef6c6653d5e4b0a7fee53f5df09f58fc711c685ae2"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.7.3/kaytu_0.7.3_darwin_arm64.tar.gz"
    sha256 "69b328a2a0fbc9d83fc5d3adcc12974e30b87bb0faf522c3e61c3bff4730422e"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.7.3/kaytu_0.7.3_linux_arm64.tar.gz"
    sha256 "2fdd69bfb2c00462e4c877f174853af5b229ef3f2505058d401be6e77032ef01"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.7.3/kaytu_0.7.3_linux_amd64.tar.gz"
    sha256 "45cb06b0968f7d63f92f3b3e1c86af2af17aba31bb8868874ece8ba0de20f0f0"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end