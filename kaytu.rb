class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "0.3.26"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v0.3.26/ktucli-macos-amd64"
    sha256 "3546314634b7f741fcacfac74f21c80a8bc0d3ef7446796fef955eb3272e9f16"
    def install
      bin.install "ktucli-macos-amd64" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v0.3.26/ktucli-macos-arm64"
    sha256 "f32a9b9038a8382f84a5727066f8e6418933dc045e3ec5c81ecae28ec769aa84"
    def install
      bin.install "ktucli-macos-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v0.3.26/ktucli-linux-arm64"
    sha256 "ec8b78b30055ca24c56541ec894bdc010e515e51266d2c5c0e6abe3bb9bbee87"
    def install
      bin.install "ktucli-linux-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v0.3.26/ktucli-linux-amd64"
    sha256 "8004b8ca1a3342df348d62e23af3a09f44c60e32dbd949fec1b4f78e8ec827d4"
    def install
      bin.install "ktucli-linux-amd64" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end