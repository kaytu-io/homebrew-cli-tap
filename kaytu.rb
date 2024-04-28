class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "0.3.51"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.51/kaytu_0.3.51_darwin_amd64.tar.gz"
    sha256 "e8057009182236582baa29dd614b37f5fea22acdb571774177f348e80e80d859"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.51/kaytu_0.3.51_darwin_arm64.tar.gz"
    sha256 "ebb471d89ef13130d6791b0d5e5b9839c9f08b30f11c7e060cbf0171561e3fca"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.51/kaytu_0.3.51_linux_arm64.tar.gz"
    sha256 "108b94956744199b03a13d6bf71188b56c08a1ded3309e825213afcac5db8823"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.51/kaytu_0.3.51_linux_amd64.tar.gz"
    sha256 "88578350116c641644f86d4102081e12f2ada418d499a15223f38cd36f887b93"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end