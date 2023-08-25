class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "1.8.61"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.8.61/ktucli-macos-amd64"
    sha256 "7a0f0557ffd6528a7e48be401dc9aa512e30772eb3003cbe36b721d57162bf65"  
    def install
      bin.install "ktucli-macos-amd64" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.8.61/ktucli-macos-arm64"
    sha256 "77d4d8a6a831a2b36301e83aedfbcd8cee4d776d7b92a0493d739774f9b39b1a"  
    def install
      bin.install "ktucli-macos-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.8.61/ktucli-linux-arm64"
    sha256 "3be195945510693e47f2a508824f23d0ba801138d7803582d54adfc2b14afa08"  
    def install
      bin.install "ktucli-linux-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.8.61/ktucli-linux-amd64"
    sha256 "296195eb935dbcef3115238810de86fa84f824c9836562784142e3e6c59426c9" 
    def install
      bin.install "ktucli-linux-amd64" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end