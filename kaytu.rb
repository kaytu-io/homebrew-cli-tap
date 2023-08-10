class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "1.8.43"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.8.43/ktucli-macos-amd64"
    sha256 "f0a613a6e8d991e92a9a7a162aad2073d66d0ec21c458a0f5f695c6ef4096f5f"  
    def install
      bin.install "ktucli-macos-amd64" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.8.43/ktucli-macos-arm64"
    sha256 "a780b0bff6a244c730f21f99a6ccb70d9d885e9301f4976effd26dfcf4f33633"  
    def install
      bin.install "ktucli-macos-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.8.43/ktucli-linux-arm64"
    sha256 "3009807adc751fea61816466043495226abcba5726678217b4ce8c033d0de55e"  
    def install
      bin.install "ktucli-linux-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.8.43/ktucli-linux-amd64"
    sha256 "3d5f5ed9effa13ab8e66a15fa0309c072b98f5bfc6a4d7a23fb2fb81865e1d51" 
    def install
      bin.install "ktucli-linux-amd64" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end
