class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "1.14.21"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.14.21/ktucli-macos-amd64"
    sha256 "b8bac9dd3b8e38409116cc4ba2a693a5475d2be64c24a04235acc42da170c685"
    def install
      bin.install "ktucli-macos-amd64" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.14.21/ktucli-macos-arm64"
    sha256 "869cc69481167f8201d09298f3cb46261d13536ecd1c6f2806d9fec80fcb4645"
    def install
      bin.install "ktucli-macos-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.14.21/ktucli-linux-arm64"
    sha256 "3ce45fa886b44e60d359f66e2e91f0a53a600e6f53cf9cc9d3f5c49b5e287e09"
    def install
      bin.install "ktucli-linux-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.14.21/ktucli-linux-amd64"
    sha256 "2922dfca787e08b333b1256cbc0eba37c858399eb9ecff72dfa00dc87cea7f92"
    def install
      bin.install "ktucli-linux-amd64" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end