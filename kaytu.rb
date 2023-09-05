class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "1.9.7"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.9.7/ktucli-macos-amd64"
    sha256 "bf8231398bc582f24199c5f193e1f90ae073bdf50aba5146a846915b65fb1a45"  
    def install
      bin.install "ktucli-macos-amd64" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.9.7/ktucli-macos-arm64"
    sha256 "0b1107883633846b4032dd99dd745cfeae14f1c078ef6bae6dc599bc377aaf71"  
    def install
      bin.install "ktucli-macos-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.9.7/ktucli-linux-arm64"
    sha256 "1581a2565c1e9fe5909fe8843b9c73f8c27ff1f90267e8f4023b62a19a3aeb52"  
    def install
      bin.install "ktucli-linux-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.9.7/ktucli-linux-amd64"
    sha256 "abbdf12f870df7339c3f7d3d8f8a73e33867b519f5f005e9bc68d7c6020c0afb" 
    def install
      bin.install "ktucli-linux-amd64" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end