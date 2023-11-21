class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "1.14.3"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.14.3/ktucli-macos-amd64"
    sha256 "da9f6a43037832a599ce6785a010b7e282158d38ba2ce9e4de14d3e742825b58"  
    def install
      bin.install "ktucli-macos-amd64" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.14.3/ktucli-macos-arm64"
    sha256 "cd5dc5b4d8f8eb0156be0c21f301cd256c8f51a635fccf5636b4b33b9fc1b387"  
    def install
      bin.install "ktucli-macos-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.14.3/ktucli-linux-arm64"
    sha256 "bc518411e5dcb08c616b9801b09a8e4a1a3640fc9f14cdaa6389bdc628617958"  
    def install
      bin.install "ktucli-linux-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.14.3/ktucli-linux-amd64"
    sha256 "d2acf8542772e9c3a1e31790eb08b52374c75b6605e969e2de288d5bffaa68f7" 
    def install
      bin.install "ktucli-linux-amd64" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end