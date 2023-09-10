class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "1.10.6"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.10.6/ktucli-macos-amd64"
    sha256 "ea194130921009f74c2b358ca5df701d83edbe51e1831037376872319173f725"  
    def install
      bin.install "ktucli-macos-amd64" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.10.6/ktucli-macos-arm64"
    sha256 "9467f849e7ef4397a31b21c27d2f415233cd497d88572fc7745c0f468d63cb7c"  
    def install
      bin.install "ktucli-macos-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.10.6/ktucli-linux-arm64"
    sha256 "d32cf68789b3d3e4c3bbded114e6930a8c520f8821eb98eacd1e6216e55d3e48"  
    def install
      bin.install "ktucli-linux-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.10.6/ktucli-linux-amd64"
    sha256 "5b54d28b0f544150efa7ae7a6fcfa41a027516f154160c6dbf2c6a13ee95d9d8" 
    def install
      bin.install "ktucli-linux-amd64" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end