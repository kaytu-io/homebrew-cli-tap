class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "1.10.5"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.10.5/ktucli-macos-amd64"
    sha256 "87eebc67b551e201606c8c03c6ca0774b0fcd37af4281a5bef109e8f0ef75469"  
    def install
      bin.install "ktucli-macos-amd64" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.10.5/ktucli-macos-arm64"
    sha256 "40828b4a58369446e3f201e32f110624af27cc4a7bf04a0e746ff35f5a0400fd"  
    def install
      bin.install "ktucli-macos-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.10.5/ktucli-linux-arm64"
    sha256 "da8241fa0db3a7632386b66317692b310524e3d89e2bcb53789ca5babd4eb59d"  
    def install
      bin.install "ktucli-linux-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.10.5/ktucli-linux-amd64"
    sha256 "1da9e818f3dc6c43923efa75068684a8f55ea2f4256f231166c4f72bfa7c8495" 
    def install
      bin.install "ktucli-linux-amd64" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end