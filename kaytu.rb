class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "1.0.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.4.9/ktucli-macos-amd64"
    sha256 "89f4ef14396b9dd75484281ebfac825dc39db335119df09391db9d9919cef11a"
    def install
      bin.install "ktucli-macos-amd64" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.4.9/ktucli-macos-arm64"
    sha256 "e95d7ab5ae7d9e129dd4436dcc23451e7a05c21412ee936f47e02bb8129f7e5b"
    def install
      bin.install "ktucli-macos-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.4.9/ktucli-linux-arm64"
    sha256 "df56860f136887de9c4567beefa940a30a46b32fe302eb6191a6d2e251a3fcae"
    def install
      bin.install "ktucli-linux-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.4.9/ktucli-linux-amd64"
    sha256 "23d70302a067bfaf21ffb12feead214dcc5b5ded76e8876f7ed03b7aa7e4f0e8"
    def install
      bin.install "ktucli-linux-amd64" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end
