class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "1.8.48"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.8.48/ktucli-macos-amd64"
    sha256 "50f1c518729731f200e10d99209b3b7c7f3226925a68eac2a81822c5549f563a"  
    def install
      bin.install "ktucli-macos-amd64" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.8.48/ktucli-macos-arm64"
    sha256 "1c02af221fdaa2988166e6f92e1b37e5209ccc5d491428836ba030cb92fe149d"  
    def install
      bin.install "ktucli-macos-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.8.48/ktucli-linux-arm64"
    sha256 "caeba9cb7b2c2f972d2bc391fc1cf48c9ff892e1fac23b442704ef3411a1b531"  
    def install
      bin.install "ktucli-linux-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.8.48/ktucli-linux-amd64"
    sha256 "5e7ceb17af5418c86ddfe6171cb4c7a267e4fc36885fdc3af8189849e3ac9f84" 
    def install
      bin.install "ktucli-linux-amd64" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end
