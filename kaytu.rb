class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "1.8.41"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.8.41/ktucli-macos-amd64"
    sha256 "6c5054adf6418de8e802a31437afee485103563fd03c52045c0a64b4e23d8793"  
    def install
      bin.install "ktucli-macos-amd64" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.8.41/ktucli-macos-arm64"
    sha256 "75a915ef7a9818274e2f6efb8a8a40e94dafc4a50d637ed1533e75204f67ff24"  
    def install
      bin.install "ktucli-macos-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.8.41/ktucli-linux-arm64"
    sha256 "36613d805be6b6f8d2deb7ab39df0a1b1c763cbdd2e23cbc2720cbc7693c6909"  
    def install
      bin.install "ktucli-linux-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.8.41/ktucli-linux-amd64"
    sha256 "0b41a37b508f8fe4df3d08ec5efb4c422a93af15119ba5cf8368a8a0f72019db" 
    def install
      bin.install "ktucli-linux-amd64" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end
