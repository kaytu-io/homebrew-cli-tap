class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "1.14.20"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.14.20/ktucli-macos-amd64"
    sha256 "591d3dec0c45277acb9e47b22d4177305eadce7eae216032cfe028ef43c896ac"
    def install
      bin.install "ktucli-macos-amd64" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.14.20/ktucli-macos-arm64"
    sha256 "63deb02b2b1d97190927b681b607ee1dc0080976ef16e5c4c0026b2c90d52280"
    def install
      bin.install "ktucli-macos-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.14.20/ktucli-linux-arm64"
    sha256 "6ec5385a8694f30c3d8c2fdc57434bc4886eeecce07d7aa8f7f62d5bf37017ae"
    def install
      bin.install "ktucli-linux-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.14.20/ktucli-linux-amd64"
    sha256 "3d4c06e7225a0d8c385dd182b7968790d43efa67a4fe7d99bcd1ac2903cfaeec"
    def install
      bin.install "ktucli-linux-amd64" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end