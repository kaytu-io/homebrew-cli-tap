class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "1.8.42"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.8.42/ktucli-macos-amd64"
    sha256 "ae6bba3aae11cfcc7cffa2ba0aa38681db7e2a82a27beb53750eb9112b4a0c87"  
    def install
      bin.install "ktucli-macos-amd64" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.8.42/ktucli-macos-arm64"
    sha256 "d335a050c46b21f371a12c5f2c58fb632d347170e53b1930f88379b6914e1240"  
    def install
      bin.install "ktucli-macos-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.8.42/ktucli-linux-arm64"
    sha256 "57193c8574f462db9ddeb45163cf4ec12ebc8232598717c7fb0e4c3ba2874e57"  
    def install
      bin.install "ktucli-linux-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.8.42/ktucli-linux-amd64"
    sha256 "121c58ef76564ec32b5cc430f03a9e69d0699d3fbe69d2586c256202c00acbda" 
    def install
      bin.install "ktucli-linux-amd64" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end
