class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "0.3.31"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.31/kaytu_0.3.31_darwin_amd64.tar.gz"
    sha256 "4b51d95b7fcd1e7d459a1a7f2dbff086981805e64b220f436e682fdad29754f3"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.31/kaytu_0.3.31_darwin_arm64.tar.gz"
    sha256 "6d1870e404df5424a287f47ee193fee71379d991005534a20de8c8fa546ac57b"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.31/kaytu_0.3.31_linux_arm64.tar.gz"
    sha256 "7a849fd89463839bf1c7147ab38f30933969da503f6fdd0060f149dad9f6100c"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.31/kaytu_0.3.31_linux_amd64.tar.gz"
    sha256 "f5de2da5165eac8cb09d0adf7d339bf3b8ae3c15002e04b79e5a70853cc9cfd6"
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end