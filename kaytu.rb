class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  url "https://github.com/kaytu-io/cli-program/releases/download/v1.3.13/ktucli-macos-amd64"
  sha256 "89f4ef14396b9dd75484281ebfac825dc39db335119df09391db9d9919cef11a"
  version "1.0.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.3.13/ktucli-macos-amd64"
    sha256 "ce02a97fb95aca9bba44413d4158f5f2c182f5eb2823bedf1400f556bb9b"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.3.13/ktucli-macos-arm64"
    sha256 "1c69849ba82c10d15706d110ae63bd97c387da2a8cf925653e1bb5c6fc"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.3.13/ktucli-linux-arm64"
    sha256 "89f4ef14396b9dd75484281ebfac825dc39db335119df09391db9d9919cef11a"
  end

  def install
    binfile_with_extension =
      File.basename(Dir.glob "#{prefix}/bin/ktucli*")
    bin.install binfile_with_extension => "kaytu"
  end

  test do
    system "#{bin}/kaytu", "--version"
  end
end
