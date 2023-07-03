class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  url "https://github.com/kaytu-io/cli-program/releases/download/v1.3.13/ktucli-macos-amd64"
  sha256 "89f4ef14396b9dd75484281ebfac825dc39db335119df09391db9d9919cef11a"
  version "1.0.0"
  license "MIT"

  def install
    bin.install "ktucli-macos-amd64"
  end

  test do
    system "#{bin}/ktucli-macos-amd64", "--version"
  end
end
