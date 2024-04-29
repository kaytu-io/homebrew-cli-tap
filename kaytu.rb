class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "0.3.58"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.58/kaytu_0.3.58_darwin_amd64.tar.gz"
    sha256 "3247b503003f3a851f0c387d60415d67644b86c1fc2c0e80c9d8cdd43fa19df9"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.58/kaytu_0.3.58_darwin_arm64.tar.gz"
    sha256 "191b3ae7374aeb006622d1ca84b1c42e1c41344002f45c33c20c0dfddedb3877"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.58/kaytu_0.3.58_linux_arm64.tar.gz"
    sha256 "458d2ef7022ce2784a7063d4882451c0b1f6f877dcdbf5e658ced98664dc81e1"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.58/kaytu_0.3.58_linux_amd64.tar.gz"
    sha256 "4500d0524e9701777166c1c67e4f0e80f58f18b12de8fcaf8bc61c764e35fa5f"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end