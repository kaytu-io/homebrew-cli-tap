class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "1.14.27"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.14.27/ktucli-macos-amd64"
    sha256 "4cb55212dc565e68f05e3287f73a3fb7f38105144b0a3f12d31d9648a78a1c0b"
    def install
      bin.install "ktucli-macos-amd64" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.14.27/ktucli-macos-arm64"
    sha256 "43b5746eafdd24ac824cfdeb44a3779a9c891a7ab6fc1ffa89734bf95b45fae9"
    def install
      bin.install "ktucli-macos-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.14.27/ktucli-linux-arm64"
    sha256 "574a698e5f88b1cbb8aa9c365d77d6351238a72ebdd7834068e61d8865e18c1c"
    def install
      bin.install "ktucli-linux-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.14.27/ktucli-linux-amd64"
    sha256 "de1836e0b025c244fc20efa66c25f976e69a8333a87ee2192477ddd1ea6a5783"
    def install
      bin.install "ktucli-linux-amd64" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end