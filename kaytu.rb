class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "1.10.1"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.10.1/ktucli-macos-amd64"
    sha256 "aa4973ac9db5acca78d7d3e4be03be16255184d0279d31b4ba1a8b7aade68cdc"  
    def install
      bin.install "ktucli-macos-amd64" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.10.1/ktucli-macos-arm64"
    sha256 "a32ed1b35ae304c3549eeea841a6cd4876949edc173e60f2c61b67de8f2577d7"  
    def install
      bin.install "ktucli-macos-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.10.1/ktucli-linux-arm64"
    sha256 "a4655b809622d40beac56e9f08976b69317e6da270a6e4c937faa7479bfc9a1d"  
    def install
      bin.install "ktucli-linux-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.10.1/ktucli-linux-amd64"
    sha256 "68bc37bed1c41f6c53c7af294ad4a70019d33354b644d17378df554007dbfacd" 
    def install
      bin.install "ktucli-linux-amd64" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end