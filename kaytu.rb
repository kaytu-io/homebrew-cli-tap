class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "1.8.50"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.8.50/ktucli-macos-amd64"
    sha256 "3cdb08c30b6362df2e8b03d6c16c0e0c65be15aadacc3500640540be58263b71"  
    def install
      bin.install "ktucli-macos-amd64" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.8.50/ktucli-macos-arm64"
    sha256 "d998d8597b830cf829dfc110f773a196918b3b8ee59c6b1d1ac0ec2d6c2a54d6"  
    def install
      bin.install "ktucli-macos-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.8.50/ktucli-linux-arm64"
    sha256 "3712d3f852b4d13e6e80c2a3d0be8a450ff8869b159230b8d59f6710075f2ba7"  
    def install
      bin.install "ktucli-linux-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.8.50/ktucli-linux-amd64"
    sha256 "a01caabb85471dcb64b8f042d88fb6bf3631cdb950e81ef84991301b4d433686" 
    def install
      bin.install "ktucli-linux-amd64" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end
