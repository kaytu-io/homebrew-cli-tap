class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "1.10.4"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.10.4/ktucli-macos-amd64"
    sha256 "6f9c9904011a056d7a160b7ee24506a178e8d0be6bb42e71671dfeb503f8063b"  
    def install
      bin.install "ktucli-macos-amd64" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.10.4/ktucli-macos-arm64"
    sha256 "79dec7fe33a6f55a470ea674cf15fd8da61940245ec185ed74ad7644bdf85fe3"  
    def install
      bin.install "ktucli-macos-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.10.4/ktucli-linux-arm64"
    sha256 "0adbf390c5b23afd08186954f846be0e838ab03808e0b5078897dce20efbcc20"  
    def install
      bin.install "ktucli-linux-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.10.4/ktucli-linux-amd64"
    sha256 "c37986c688bad44bf95bcdd91c8594d5cfe41e5b8949f32470a804b63c5b75fc" 
    def install
      bin.install "ktucli-linux-amd64" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end