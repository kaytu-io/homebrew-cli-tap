class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "1.14.14"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.14.14/ktucli-macos-amd64"
    sha256 "53e2f548bfaa85dad2fa733522d7694fe80283f17446b6aca0c410d055b6b6e1"
    def install
      bin.install "ktucli-macos-amd64" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.14.14/ktucli-macos-arm64"
    sha256 "543b355c4e834fee0ae1aa7de7df84602ff09d767e56d8ee2c0ea0a5a73a7782"
    def install
      bin.install "ktucli-macos-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.14.14/ktucli-linux-arm64"
    sha256 "483e5f7ff437c254ea0521d958adc04be5548d7bd9614a55ee76f1ea7d4018a9"
    def install
      bin.install "ktucli-linux-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.14.14/ktucli-linux-amd64"
    sha256 "035a0e05819bacb5e8b61b68a073489ca7a3e1adfb922307ce253947e957ede3"
    def install
      bin.install "ktucli-linux-amd64" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end