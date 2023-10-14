class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "1.12.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.12.0/ktucli-macos-amd64"
    sha256 "5e5eca7420e3a3a2b16fc5b8585af3dbf44660113471dbac851c2335f7923fc4"  
    def install
      bin.install "ktucli-macos-amd64" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.12.0/ktucli-macos-arm64"
    sha256 "4efe010830bf42474b0e0b6481ad28a5f6699f6f3d03d7abc06f37f1c86ac428"  
    def install
      bin.install "ktucli-macos-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.12.0/ktucli-linux-arm64"
    sha256 "48308cca0125b738e7f8c204b6bf647172484f11a1691627e3f5ade5441121f6"  
    def install
      bin.install "ktucli-linux-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.12.0/ktucli-linux-amd64"
    sha256 "984acd6798ac77fe544901b68d6fc7957aea276b7da9bed153d359b21ca4f900" 
    def install
      bin.install "ktucli-linux-amd64" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end