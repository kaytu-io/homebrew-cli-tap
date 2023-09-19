class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "1.10.8"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.10.8/ktucli-macos-amd64"
    sha256 "9dfab3bad1f733227730356f3375f83b296dd7304efd6466c78f59ee46a84297"  
    def install
      bin.install "ktucli-macos-amd64" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.10.8/ktucli-macos-arm64"
    sha256 "e27e277937c680f752c75b319e9615c43324df94d6770e08a2f4c471e4dd1189"  
    def install
      bin.install "ktucli-macos-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.10.8/ktucli-linux-arm64"
    sha256 "9da6dcbb3db28c79f50a3e45b39578325f2c2b5c7d2227d63d15f86b6128d2e1"  
    def install
      bin.install "ktucli-linux-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.10.8/ktucli-linux-amd64"
    sha256 "8ad477ef83ee405c0eaeb9d1dbf05cb65a199df90cffb1db98481b9bba2b1d1a" 
    def install
      bin.install "ktucli-linux-amd64" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end