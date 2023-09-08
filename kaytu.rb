class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "1.10.3"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.10.3/ktucli-macos-amd64"
    sha256 "d4ffe79186d829b3df2fcee01aba368311e1f559a90f96a6c1f4d03c3091f42e"  
    def install
      bin.install "ktucli-macos-amd64" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.10.3/ktucli-macos-arm64"
    sha256 "35770415ab79021ee7d48d5a316a218547d2631dfa92421803a5cebf879e3790"  
    def install
      bin.install "ktucli-macos-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.10.3/ktucli-linux-arm64"
    sha256 "efade4e6dffe90062f766236d594dd15d4d5c494c610bfb8523c6c40327aeba4"  
    def install
      bin.install "ktucli-linux-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.10.3/ktucli-linux-amd64"
    sha256 "d2da6d099f2e71e2d8a3f11ae56e31708d36c8bfe1e501f331562e595d8ee310" 
    def install
      bin.install "ktucli-linux-amd64" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end