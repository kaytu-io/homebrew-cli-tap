class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "1.10.9"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.10.9/ktucli-macos-amd64"
    sha256 "3d446497a5d80554a8d77203e296db593b950fba8430bf150acdbcfa5f8da507"  
    def install
      bin.install "ktucli-macos-amd64" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.10.9/ktucli-macos-arm64"
    sha256 "b86624d7ce326488978ba699fbd7ee87f43bdf82211cf848bae940b8fe5f7b2b"  
    def install
      bin.install "ktucli-macos-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.10.9/ktucli-linux-arm64"
    sha256 "18443dee89980495265fff6359439db5cf0ddf8cae09fe185c3e21ad597e8273"  
    def install
      bin.install "ktucli-linux-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.10.9/ktucli-linux-amd64"
    sha256 "18975e5085df42ce92c29fecfe74abb9712d67f227930531322587468e4a9d76" 
    def install
      bin.install "ktucli-linux-amd64" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end