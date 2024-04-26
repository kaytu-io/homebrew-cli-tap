class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "0.3.27"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.27/kaytu-darwin-amd64"
    sha256 "82b7f40752946007e99f2cbd332f8742b1a62e45c04662041171d6dfdafa597b"
    def install
      bin.install "ktucli-macos-amd64" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.27/kaytu-darwin-arm64"
    sha256 "6eab6a8d4ba1ae9e15b70ed09543debc4dbc59d7c42957afb019a7b89a22d9f9"
    def install
      bin.install "ktucli-macos-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.27/kaytu-linux-arm64"
    sha256 "fa6682a8ec820eca584bb6e0e7a30d93a42a6cedbab8f002bee759e56eef9c71"
    def install
      bin.install "ktucli-linux-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.27/kaytu-linux-amd64"
    sha256 "d3d43d44109bcc99699c90641e53c41d2a50aadd7f9618566e2ea80a5a7304d6"
    def install
      bin.install "ktucli-linux-amd64" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end