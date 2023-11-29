class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "1.14.15"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.14.15/ktucli-macos-amd64"
    sha256 "45bc291c6bc7bb720a8e776c38ae975b62084e46b6f8fa30f82a4702c07543f0"
    def install
      bin.install "ktucli-macos-amd64" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.14.15/ktucli-macos-arm64"
    sha256 "0ea4f679d52b7e6ab626dfe6c2d16ab044366003c699a5397afe3ae802151b95"
    def install
      bin.install "ktucli-macos-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.14.15/ktucli-linux-arm64"
    sha256 "5536d0e85d559f649c37d27652b2b87846da87c10dd875695dff4085cb8d0012"
    def install
      bin.install "ktucli-linux-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.14.15/ktucli-linux-amd64"
    sha256 "b1a8681641289df357fe8c5ae996ec150c23193174ef9c7ecf30de4699cf52ac"
    def install
      bin.install "ktucli-linux-amd64" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end