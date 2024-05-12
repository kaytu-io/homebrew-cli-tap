class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "0.7.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.7.0/kaytu_0.7.0_darwin_amd64.tar.gz"
    sha256 "8e486adb2291be3eb2384b3b2f9edd7ef2da9f22639e823ee67a1e9d771cf492"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.7.0/kaytu_0.7.0_darwin_arm64.tar.gz"
    sha256 "cfd324f7c269901b84a0f7cc5b4e76a0f52907fb6d934e0333f653e6eb531c46"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.7.0/kaytu_0.7.0_linux_arm64.tar.gz"
    sha256 "5c1ad7f81800b670fc9fcbc735b30f2a1e5fb62dc57624edac7f8ad8c9c81e8d"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.7.0/kaytu_0.7.0_linux_amd64.tar.gz"
    sha256 "a001f5d5d1f775e69f00905648d0020f0aa5b9e60e024439a38dd7800b9e0b59"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end