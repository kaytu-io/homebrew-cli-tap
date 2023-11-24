class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "1.14.9"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.14.9/ktucli-macos-amd64"
    sha256 "f007c8e12516dfb1c7af996bacc0cffbbd0525ce2f8bf7815c19b950a12f5771"
    def install
      bin.install "ktucli-macos-amd64" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.14.9/ktucli-macos-arm64"
    sha256 "a50ffbe05c2df8e162717229dcb6e6a51c5f83916303c181e59bfe67c9e2ee4f"
    def install
      bin.install "ktucli-macos-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.14.9/ktucli-linux-arm64"
    sha256 "143ba7ceb9c5e380d29e85257453ceb10612528e1307cabf662c79ef75641f6e"
    def install
      bin.install "ktucli-linux-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.14.9/ktucli-linux-amd64"
    sha256 "3c5f051d9e2245febd08509e0fc016eecb91006bdbd022c7480adcdd60e22d12"
    def install
      bin.install "ktucli-linux-amd64" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end