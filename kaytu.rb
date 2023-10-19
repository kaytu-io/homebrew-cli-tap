class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "1.12.9"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.12.9/ktucli-macos-amd64"
    sha256 "e6eec0a2ab1504985edd46c2efff8bf7da316e11cda13f406dcf0fdf530ba12d"  
    def install
      bin.install "ktucli-macos-amd64" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.12.9/ktucli-macos-arm64"
    sha256 "a8062c122440096a5c6a83d73c0939df344447e680727c091a69f4a911b12843"  
    def install
      bin.install "ktucli-macos-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.12.9/ktucli-linux-arm64"
    sha256 "057a3b71553e41a679921e57e05543b1f0d0e2c2d56faed60169e45e3c98c308"  
    def install
      bin.install "ktucli-linux-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.12.9/ktucli-linux-amd64"
    sha256 "f3a6fab4b17dfadb07a71a730697ecc004071d1d90a983a37970dfb47fba72d1" 
    def install
      bin.install "ktucli-linux-amd64" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end