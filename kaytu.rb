class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "0.3.53"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.53/kaytu_0.3.53_darwin_amd64.tar.gz"
    sha256 "9d78fb87594ae81ed1bd1b19b73be8c61210be297b0a6cc7967d5fe4e22ba9a6"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.53/kaytu_0.3.53_darwin_arm64.tar.gz"
    sha256 "bb3165616eb8e62177ff39c0a99c9b894db9bef61579ebd85c24ae2ca4f1babc"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.53/kaytu_0.3.53_linux_arm64.tar.gz"
    sha256 "ea8e3ec748edb1acf66abce79fb21b7133e4380d1a54d827dd4049b685f6a185"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.53/kaytu_0.3.53_linux_amd64.tar.gz"
    sha256 "47d09dd92be7d431e444c7413c51f4e650f6bc0607884d0010a44e55bc848431"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end