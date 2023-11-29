class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "1.14.18"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.14.18/ktucli-macos-amd64"
    sha256 "ecc9c29ae90e05aec2583a9979be2ae495209525b5f23d46e096d957872bec26"
    def install
      bin.install "ktucli-macos-amd64" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.14.18/ktucli-macos-arm64"
    sha256 "ce7305875ad6dba5d3061406b3f00df636a5180c85b713674545f299cd8acc8c"
    def install
      bin.install "ktucli-macos-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.14.18/ktucli-linux-arm64"
    sha256 "4d0335b7c788c7f7fff495bd7d41ae854a9fc2100820d0d386fc78b12926d091"
    def install
      bin.install "ktucli-linux-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.14.18/ktucli-linux-amd64"
    sha256 "3e7429d9e6305adbb1ff3b4efd4a62202c602b648a4be77b886d75e99b30c4fa"
    def install
      bin.install "ktucli-linux-amd64" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end