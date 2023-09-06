class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "1.10.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.10.0/ktucli-macos-amd64"
    sha256 "7d479d90b11a1a9a5cfaa10a1aa4bc61ce9a4f9db32afa6ef191e9e83602b534"  
    def install
      bin.install "ktucli-macos-amd64" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.10.0/ktucli-macos-arm64"
    sha256 "4e721b850f8afa2325fad46e71ca50409285ddef2f0d866a126db7184c6568ba"  
    def install
      bin.install "ktucli-macos-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.10.0/ktucli-linux-arm64"
    sha256 "657d68e1bd4136b27c73e9e8e535ede7012bc0aff84dc99d1532a5de60cf5e96"  
    def install
      bin.install "ktucli-linux-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.10.0/ktucli-linux-amd64"
    sha256 "846098b68c5bf69d8a385e5187a621349b6ae68904bb0a99f3b29c52f9114f6b" 
    def install
      bin.install "ktucli-linux-amd64" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end