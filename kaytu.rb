class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "1.9.6"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.9.6/ktucli-macos-amd64"
    sha256 "eb87c5da62727966cce14e0902a8b47f4fe86a12f119a239efd5af6f5f2ee28e"  
    def install
      bin.install "ktucli-macos-amd64" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.9.6/ktucli-macos-arm64"
    sha256 "c4c56062ff9dfac67ce03f6d07b6a932a9eed0ac3b8939a639e11aa31f0799b6"  
    def install
      bin.install "ktucli-macos-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.9.6/ktucli-linux-arm64"
    sha256 "7fd3885957b99e77953fa02b3e926e163de3139cd3dda96c50063894c41c2fe9"  
    def install
      bin.install "ktucli-linux-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.9.6/ktucli-linux-amd64"
    sha256 "16b8d300ae9dc0b4c6df39a7617b24d44422e2b3659df99f24700a30f4bec84b" 
    def install
      bin.install "ktucli-linux-amd64" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end