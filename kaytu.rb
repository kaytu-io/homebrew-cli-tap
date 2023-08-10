class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "1.8.38"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.8.38/ktucli-macos-amd64"
    sha256 "a0a631d8c674f0086164f057ecbe82813a4e48098ec7dbe81e5d4e26a596f0f2"
    def install
      bin.install "ktucli-macos-amd64" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.8.38/ktucli-macos-arm64"
$(echo "    sha256 "$(cat newHash)"")
    def install
      bin.install "ktucli-macos-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.8.38/ktucli-linux-arm64"
    sha256 "df56860f136887de9c4567beefa940a30a46b32fe302eb6191a6d2e251a3fcae"
    def install
      bin.install "ktucli-linux-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.8.38/ktucli-linux-amd64"
    sha256 "6d98006b5551093454f5414948520551b91fc04ddeafb09d34a7b8b802455df3"
    def install
      bin.install "ktucli-linux-amd64" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end
