class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "1.12.10"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.12.10/ktucli-macos-amd64"
    sha256 "05350ce7293e4267d14d460a433a17145f139d61f3a6a4c1c449d571f542baf0"  
    def install
      bin.install "ktucli-macos-amd64" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.12.10/ktucli-macos-arm64"
    sha256 "9d6330b137303ce386407892946618cfec83e31e9132a2531f33a539eb1b9d0c"  
    def install
      bin.install "ktucli-macos-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.12.10/ktucli-linux-arm64"
    sha256 "bd01ce6e37b01694dd7931411335d735ebfaef2f9b8cee4410a5873662c9d9da"  
    def install
      bin.install "ktucli-linux-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.12.10/ktucli-linux-amd64"
    sha256 "de6ba418c3552ef049e4cfd4adb6e9573738a53b5a546aabef8c7ebe2464034a" 
    def install
      bin.install "ktucli-linux-amd64" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end