class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "1.14.5"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.14.5/ktucli-macos-amd64"
    sha256 "b2b67e12e629225df955d669d4c58b5817c756362e237239afe71bd9d8dd7376"  
    def install
      bin.install "ktucli-macos-amd64" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.14.5/ktucli-macos-arm64"
    sha256 "644b2c6d9a6bda4fcc1f0ab1727d6cdb5bc3dd9cbab8650144492e4a31df91cc"  
    def install
      bin.install "ktucli-macos-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.14.5/ktucli-linux-arm64"
    sha256 "4966039b43b24e04ee2e9bd79c9374288fb80bedcc2c044b40985ca564f115dc"  
    def install
      bin.install "ktucli-linux-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.14.5/ktucli-linux-amd64"
    sha256 "9694c92c8a292361ecbc3a3c6be135c2a3f82f30d7fd572dbaf066a88f014a4c" 
    def install
      bin.install "ktucli-linux-amd64" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end