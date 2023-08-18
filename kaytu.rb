class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "1.8.50"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.8.50/ktucli-macos-amd64"
    sha256 "333d11430ca6a9a7b882e82540658d2b81dd4c4290cc7a7eb02b187bda219d4f"  
    def install
      bin.install "ktucli-macos-amd64" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.8.50/ktucli-macos-arm64"
    sha256 "94ab383a8a60e37e2268c0b1af9be445789ec36cd8f5245e1de288d6d50153a7"  
    def install
      bin.install "ktucli-macos-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.8.50/ktucli-linux-arm64"
    sha256 "49dc3a5bcd42add229823d7d3619b3a7a12b34d78cbb06918485bf5627612e4c"  
    def install
      bin.install "ktucli-linux-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.8.50/ktucli-linux-amd64"
    sha256 "b5790a2f915f017ce77c821e4c9103c2728767bab46a9de307e6f09ced721c83" 
    def install
      bin.install "ktucli-linux-amd64" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end
