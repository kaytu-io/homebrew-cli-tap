class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "1.14.4"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.14.4/ktucli-macos-amd64"
    sha256 "39e0b1a7d979e70c2570bf58e096a31f34598761ef2149f32766f764739fab58"  
    def install
      bin.install "ktucli-macos-amd64" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.14.4/ktucli-macos-arm64"
    sha256 "b8da9ddafa289e5fc7330243072697683ffa8eaac7303ffb02afe43d78085933"  
    def install
      bin.install "ktucli-macos-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.14.4/ktucli-linux-arm64"
    sha256 "aa74fa8693230fa75335a0be5bdca8ad26eb1c875c7f976222a9eab7af4bcf7e"  
    def install
      bin.install "ktucli-linux-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.14.4/ktucli-linux-amd64"
    sha256 "77be82c263f4b617d53137cf0c1f1029dd2576c2ebbe5a19ca5fc3c065f5a344" 
    def install
      bin.install "ktucli-linux-amd64" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end