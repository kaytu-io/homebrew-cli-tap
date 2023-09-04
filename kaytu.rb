class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "1.9.4"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.9.4/ktucli-macos-amd64"
    sha256 "5bcdd0790a5871426ea048adcf33ebfb3ddf0b08449b71ed846acb27e807f7f8"  
    def install
      bin.install "ktucli-macos-amd64" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.9.4/ktucli-macos-arm64"
    sha256 "aab6bbe749fc38b68a1a5eb3839f1ea6def29af5bdb39f3c7414c44150711183"  
    def install
      bin.install "ktucli-macos-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.9.4/ktucli-linux-arm64"
    sha256 "277d3654836da6ee7db063d6b88a8e357faf25b19682cf2398d454c96f0d89c4"  
    def install
      bin.install "ktucli-linux-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.9.4/ktucli-linux-amd64"
    sha256 "2e519f7eeb89f30c985e04fa3e6bd575e12f66f594afa8f606ce2dac045e4822" 
    def install
      bin.install "ktucli-linux-amd64" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end