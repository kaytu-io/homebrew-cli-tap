class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "1.8.60"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.8.60/ktucli-macos-amd64"
    sha256 "0712562a713fb7d87965408b19bb19b5e2bfd2eb51ad14c90177c95f4940b369  url."  
    def install
      bin.install "ktucli-macos-amd64" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.8.60/ktucli-macos-arm64"
    sha256 "773fe63fc0461edfaa94224a7042edb114cadb3edce6f680705112d6ef940e65  url."  
    def install
      bin.install "ktucli-macos-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.8.60/ktucli-linux-arm64"
    sha256 "c2782c832d2a3136f009dd69a562618a246f47a714ed45b1c2e852479e1d112a  url."  
    def install
      bin.install "ktucli-linux-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.8.60/ktucli-linux-amd64"
    sha256 "27c843537632e5db5d36aa93714a923bd40e85d9629db42167030cee2552c04c  url." 
    def install
      bin.install "ktucli-linux-amd64" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end