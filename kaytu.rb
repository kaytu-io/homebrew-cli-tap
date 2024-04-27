class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "0.3.44"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.44/kaytu_0.3.44_darwin_amd64.tar.gz"
    sha256 "741fcaf779a210bf2727a4f4fb59c766a7e119432a033da00eb092182af07f8c"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.44/kaytu_0.3.44_darwin_arm64.tar.gz"
    sha256 "beff4f7671d228f505168daa1d47ae96ac2c55f5d4a56907882c51b69a02bfc9"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.44/kaytu_0.3.44_linux_arm64.tar.gz"
    sha256 "d2a7bfee9344d398230e8dc569e37c58e359620449d30ffac8bef4c9d1c22c01"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.44/kaytu_0.3.44_linux_amd64.tar.gz"
    sha256 "46404ac4a1a5ee931d75ec95d5a9ae06fa51ec7c252a711b4c01be30fa1d9196"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end