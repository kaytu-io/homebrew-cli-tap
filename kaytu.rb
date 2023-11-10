class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "1.14.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.14.0/ktucli-macos-amd64"
    sha256 "3e64b2bf45bcc9897838fcd5f1d5df6a5789baab8ce98bceb91feb4a2704d4eb"  
    def install
      bin.install "ktucli-macos-amd64" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.14.0/ktucli-macos-arm64"
    sha256 "e99c21ccdd6e02e73fd5344ace1450c067565d9aaa47cd5efaf0924b66fc2ab7"  
    def install
      bin.install "ktucli-macos-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.14.0/ktucli-linux-arm64"
    sha256 "9c93ccccbe21ddc614de4625a546c05d6a3bd1a811c78b972a059fbc7cf1d812"  
    def install
      bin.install "ktucli-linux-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.14.0/ktucli-linux-amd64"
    sha256 "fba3121cd1a0afef128c4d1f11e4ad204afdda4513d5077f4d44a27d7f0130d2" 
    def install
      bin.install "ktucli-linux-amd64" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end