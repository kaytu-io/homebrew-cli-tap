class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "1.8.63"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.8.63/ktucli-macos-amd64"
    sha256 "f14d196a993ffc94db1fb0910fd301b7d97b6f84a0cf0a35b747655d24e8d2a4"  
    def install
      bin.install "ktucli-macos-amd64" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.8.63/ktucli-macos-arm64"
    sha256 "8e1c131d19adb7b6c35889232a68da3a9aad24caca454087578b720f5f95619f"  
    def install
      bin.install "ktucli-macos-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.8.63/ktucli-linux-arm64"
    sha256 "64acbb37c4d6dad18cc8b631f87b9322a7a58f6dd05d83999771c7b2418b5df4"  
    def install
      bin.install "ktucli-linux-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.8.63/ktucli-linux-amd64"
    sha256 "fb47c3749beb6f4e8543d3e41b2fc2fbe81ddfd68658d6596f2c0195a5ae9ab2" 
    def install
      bin.install "ktucli-linux-amd64" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end