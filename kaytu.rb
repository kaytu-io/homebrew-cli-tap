class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "1.9.5"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.9.5/ktucli-macos-amd64"
    sha256 "78921ae12d514fbb3870f51eda2cb9c062737cdadf1d4aa1b5070c0865796e37"  
    def install
      bin.install "ktucli-macos-amd64" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.9.5/ktucli-macos-arm64"
    sha256 "dcecc33678148850b66a4c39a482448c94f0dd416656602826939a3a0437e36d"  
    def install
      bin.install "ktucli-macos-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.9.5/ktucli-linux-arm64"
    sha256 "471afe4d09fb14129d10f1b086b523a9f8d1cab3a6143fe7ef3b9a38a8232267"  
    def install
      bin.install "ktucli-linux-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.9.5/ktucli-linux-amd64"
    sha256 "745d90f8b0bde0f25741b7e5ddfbc1ef21bfa1ae2d56241596fdb8d9c69550e0" 
    def install
      bin.install "ktucli-linux-amd64" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end