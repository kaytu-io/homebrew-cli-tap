class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "0.3.30"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.30/kaytu_0.3.30_darwin_amd64.tar.gz"
    sha256 "457c08cc201e0f8589d9a1933ccb3f7bd033bc85b259c32e1d93fad621df1a8b"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.30/kaytu_0.3.30_darwin_arm64.tar.gz"
    sha256 "5a29f2b600f063c2dd973849fb05feb1dc8c52911d61b52650bbb1d74943c307"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.30/kaytu_0.3.30_linux_arm64.tar.gz"
    sha256 "d8d193c7eadf8d0059b006b34414b56de728a06f270c6bc911613fd01ba2edb2"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.30/kaytu_0.3.30_linux_amd64.tar.gz"
    sha256 "8763680aa2b806752066e19fa0dbd6537a156d29b427a383bc0097274102ed71"
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end