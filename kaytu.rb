class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "1.14.7"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.14.7/ktucli-macos-amd64"
    sha256 "97ab6fb8ab38a195a1c6cedcf26f58a7c2457bd7326e9369d96b10297623e9f6"  
    def install
      bin.install "ktucli-macos-amd64" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.14.7/ktucli-macos-arm64"
    sha256 "242c17eb39ceb5a368d952d20db3e0b3bec13906e3384e12c97c8971e2816f3c"  
    def install
      bin.install "ktucli-macos-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.14.7/ktucli-linux-arm64"
    sha256 "f3eb950928156d82d5f779caed225083b260228b79940077bfacd1603d6a8ef1"  
    def install
      bin.install "ktucli-linux-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.14.7/ktucli-linux-amd64"
    sha256 "99efb4cd4957a13cc2b5fbec4902e947d7a45954f9a8a55528fdd559f8cb4fb9" 
    def install
      bin.install "ktucli-linux-amd64" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end