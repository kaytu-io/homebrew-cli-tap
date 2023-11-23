class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "1.14.6"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.14.6/ktucli-macos-amd64"
    sha256 "d9db8898def195b21dc258443ef923350be609676a78011a8bfaf032520863c4"  
    def install
      bin.install "ktucli-macos-amd64" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.14.6/ktucli-macos-arm64"
    sha256 "65d8d138f043873485a67782ad97e144afffb5a5202c62429cb5bd89141afa14"  
    def install
      bin.install "ktucli-macos-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.14.6/ktucli-linux-arm64"
    sha256 "6944abb7db8fab7f5d73b06895e1e9c7d6a1bf56bc1930e0b329d3c1be8a064f"  
    def install
      bin.install "ktucli-linux-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.14.6/ktucli-linux-amd64"
    sha256 "05a6e6903f815b85b922ea189408c5aedac004fdc2b7a996982961675befc629" 
    def install
      bin.install "ktucli-linux-amd64" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end