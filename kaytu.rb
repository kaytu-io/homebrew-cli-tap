class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "1.14.1"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.14.1/ktucli-macos-amd64"
    sha256 "f86c420c6a4f5111f8d4344850f0136e6d6a0c196ba04dccb57f3112844495e2"  
    def install
      bin.install "ktucli-macos-amd64" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.14.1/ktucli-macos-arm64"
    sha256 "f858304adaf55474ed3623b3a51f8a0d5dd80da658e4ce6ab2198572cb367c31"  
    def install
      bin.install "ktucli-macos-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.14.1/ktucli-linux-arm64"
    sha256 "714a6fe50fa1207b87f0d2efcfe6b2a35fd6a63d740354da778c8ca3610b193b"  
    def install
      bin.install "ktucli-linux-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.14.1/ktucli-linux-amd64"
    sha256 "aa865f255ec220dd6ccbec0b15c25a14c6d5b49a75e4f7d23a0b5f5be3b48bac" 
    def install
      bin.install "ktucli-linux-amd64" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end