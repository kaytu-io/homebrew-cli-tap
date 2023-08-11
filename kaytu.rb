class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "1.8.48"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.8.48/ktucli-macos-amd64"
    sha256 "49b4dc8defd0097b47dab515f3557dfbb92418ffc29a137d6776541b3d6a5086"  
    def install
      bin.install "ktucli-macos-amd64" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.8.48/ktucli-macos-arm64"
    sha256 "f3dc9eb049a417bb08860689bd8d0d16ea659a15d097fb988d8004180eef6395"  
    def install
      bin.install "ktucli-macos-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.8.48/ktucli-linux-arm64"
    sha256 "238fc8373bebf2e8c2b6a90eab16c80cc9fe5bdf377d5c6f25abebf94392e9b0"  
    def install
      bin.install "ktucli-linux-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.8.48/ktucli-linux-amd64"
    sha256 "daa0bd87b14cd13e8d8344cbeea2b7c3e56eeea2b8d36c00ffd4b6e5f6d86d47" 
    def install
      bin.install "ktucli-linux-amd64" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end
