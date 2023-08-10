class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "1.8.39"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.8.39/ktucli-macos-amd64"
    sha256 c72c7ca3aeca14def1804166a77a8a9d482bbc658aebb9c79ee0f1406a6765d6  
    def install
      bin.install "ktucli-macos-amd64" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.8.39/ktucli-macos-arm64"
    sha256 4fa075f4458a7deafcdd9f4a1039201672e8a8a5d3ede3ddc1a774dd1cabf727  
    def install
      bin.install "ktucli-macos-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.8.39/ktucli-linux-arm64"
    sha256 df95f729e3c74f8f57449e0ecf1e49502ef65b31ef6aff4a951f49dc5d354aa8  
    def install
      bin.install "ktucli-linux-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.8.39/ktucli-linux-amd64"
    sha256 423a45b2fdeac8bd0eafaeb012643e76418f3d69e007901c2e04d4e53ac4cba2  
    def install
      bin.install "ktucli-linux-amd64" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end
