class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "0.8.5"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.8.5/kaytu_0.8.5_darwin_amd64.tar.gz"
    sha256 "6ffa6d91a1cb3a11f1a9067a9a297e2114ee2a449eb475a46eae89ad80d23fdc"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.8.5/kaytu_0.8.5_darwin_arm64.tar.gz"
    sha256 "904597639c2989ead4fb674d5d9457ae1a8780955aff01ba8045a4e8db6f2710"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.8.5/kaytu_0.8.5_linux_arm64.tar.gz"
    sha256 "fee495ddbd305487dfca26d59129399c30aee2eb22e0515fa417dc14b322c65b"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.8.5/kaytu_0.8.5_linux_amd64.tar.gz"
    sha256 "52ae791d67ea8e391346d74536d1ad4e6faf71f2fb0739d52dc9856802b48b40"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end