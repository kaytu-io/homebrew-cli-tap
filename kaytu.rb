class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "1.10.7"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.10.7/ktucli-macos-amd64"
    sha256 "f3b983fb9fc21347213a7d94270521a6f8ea863fb2fa5cf7607be89dbb5c8cb5"  
    def install
      bin.install "ktucli-macos-amd64" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.10.7/ktucli-macos-arm64"
    sha256 "1d05633ab8184e5f6634efe0eda55151be6796b83ba95b40b49044882b283f02"  
    def install
      bin.install "ktucli-macos-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.10.7/ktucli-linux-arm64"
    sha256 "3271019fb2e6e97619a89114544da9d5d818601cddb658d2ccde822f61a51378"  
    def install
      bin.install "ktucli-linux-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.10.7/ktucli-linux-amd64"
    sha256 "eb6c02858b080d4b820483b4ecde2a0483b06027722d276e1a6fb28b8d10c940" 
    def install
      bin.install "ktucli-linux-amd64" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end