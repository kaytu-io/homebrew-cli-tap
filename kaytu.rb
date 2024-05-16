class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "0.8.1"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.8.1/kaytu_0.8.1_darwin_amd64.tar.gz"
    sha256 "1de9f7846ad7a4c47edb5eeb5e4e9f3df002ee4512f5b37e24d13e0b55d1debc"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.8.1/kaytu_0.8.1_darwin_arm64.tar.gz"
    sha256 "21f0f9459527f8c893bf66ff6dfe7f31bd9c24985fbdaa5adeb3d23fe0f57a5a"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.8.1/kaytu_0.8.1_linux_arm64.tar.gz"
    sha256 "8e04faa59ab54538775175fd25a1f328eba24416a7e4f5029cc1a7e85511aa2b"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.8.1/kaytu_0.8.1_linux_amd64.tar.gz"
    sha256 "c44604d1ed63e4ca0c11e189eec1c9e805923960b6b5ea5aff7b74194ffa64c1"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end