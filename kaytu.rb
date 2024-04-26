class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "0.3.28"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.28/kaytu_0.3.28_darwin_amd64.tar.gz"
    sha256 "af26f40cf08f2b13fdaa368aa033a639dff7c9f7a382982cf32d13ecc8596b3f"
    def install
      system "tar", "-xf", "kaytu_0.3.28_darwin_amd64.tar.gz"
      bin.install "kaytu_0.3.28_darwin_amd64" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.28/kaytu_0.3.28_darwin_arm64.tar.gz"
    sha256 "ec91937a866e783acb76f3fce3b450cff1e1a25600df90feb9340743e60a73a8"
    def install
      system "tar", "-xf", "kaytu_0.3.28_darwin_arm64.tar.gz"
      bin.install "kaytu_0.3.28_darwin_arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.28/kaytu_0.3.28_linux_arm64.tar.gz"
    sha256 "3f629bfa76c44bb5737ea970c3729353d09411399734fcd94da74a3fb4237c7d"
    def install
      system "tar", "-xf", "kaytu_0.3.28_linux_arm64.tar.gz"
      bin.install "kaytu_0.3.28_linux_arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.28/kaytu_0.3.28_linux_amd64.tar.gz"
    sha256 "5a5ee5ab8c5f3c53cd0be92ad1e48793d99fb020d7a44350ff43e70c1d01aa99"
    def install
      system "tar", "-xf", "kaytu_0.3.28_linux_amd64.tar.gz"
      bin.install "kaytu_0.3.28_linux_amd64" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end