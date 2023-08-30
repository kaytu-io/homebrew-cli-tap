class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "1.8.70"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.8.70/ktucli-macos-amd64"
    sha256 "d90505cccf0b269ca415e44e57f293a7b2dd95721b9225c32095a3260b04bfda"  
    def install
      bin.install "ktucli-macos-amd64" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.8.70/ktucli-macos-arm64"
    sha256 "2d268828fa4e4f3b8e42f3c43469ed2362c4bd5ed6f28cc3d9c66fe2d085a6f2"  
    def install
      bin.install "ktucli-macos-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.8.70/ktucli-linux-arm64"
    sha256 "0e131af0113500ad70e4025c95bab65d751860bb715a4f23aaa91477615b5261"  
    def install
      bin.install "ktucli-linux-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.8.70/ktucli-linux-amd64"
    sha256 "e2936e368ff6feb8419c99ab6e22b096f4ec549cb3437b6114d11ac7e9dbff71" 
    def install
      bin.install "ktucli-linux-amd64" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end