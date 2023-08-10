class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "1.8.40"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.8.40/ktucli-macos-amd64"
    sha256 "5198302c5ee1c822e52b0872dd4eaeb9880b273c63fc6bb3e65493ffe19b76d5  "  
    def install
      bin.install "ktucli-macos-amd64" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.8.40/ktucli-macos-arm64"
    sha256 "61615515c51e1eeb948ee12ae5fdf09e8bc6550b55e5ecc477ef5a3c23165931  "  
    def install
      bin.install "ktucli-macos-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.8.40/ktucli-linux-arm64"
    sha256 "003068bf253933a240620ad2673ba042c84f2d4ffed72b4fa9563584132bd652  "  
    def install
      bin.install "ktucli-linux-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.8.40/ktucli-linux-amd64"
    sha256 "58f0904c731ea44d627e3cae20f818bd5a871569f77bfafcfcdc311081d9125b  "  
    def install
      bin.install "ktucli-linux-amd64" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end
