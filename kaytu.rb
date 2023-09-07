class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "1.10.2"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.10.2/ktucli-macos-amd64"
    sha256 "bbf0b70d9d0908a884667445a23b5010415b2d60f9d294629cfa396dfdd62d28"  
    def install
      bin.install "ktucli-macos-amd64" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.10.2/ktucli-macos-arm64"
    sha256 "2503705e10b04ac3419662039d3d300985067836368e8ac23e1a41d7bbeb57b6"  
    def install
      bin.install "ktucli-macos-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.10.2/ktucli-linux-arm64"
    sha256 "930bcf874f4d6be14fafccd459bf70292e9bc194a55d6821bab8d694167010d8"  
    def install
      bin.install "ktucli-linux-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.10.2/ktucli-linux-amd64"
    sha256 "bfc8909c8b16302a9c6ebd42cfe3bd6d27b7f14aea3aabcd42021194eb7dd8b0" 
    def install
      bin.install "ktucli-linux-amd64" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end