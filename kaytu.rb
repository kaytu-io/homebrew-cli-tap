class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "0.7.4"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.7.4/kaytu_0.7.4_darwin_amd64.tar.gz"
    sha256 "bce9a0747c1eaf4f1170663514a962504547bce4e02aff3fd0c2d9c625b532e6"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.7.4/kaytu_0.7.4_darwin_arm64.tar.gz"
    sha256 "416d1d16a8a209f507d0f495086400b9cf1114c7434401bed7fe84f754269952"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.7.4/kaytu_0.7.4_linux_arm64.tar.gz"
    sha256 "9c0c8c4067ef4194138e82839f750698235f2376ef704c217b1388b57782a539"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.7.4/kaytu_0.7.4_linux_amd64.tar.gz"
    sha256 "ec0b245281e3a7ab116ba188391da7a4583182f85abb486453ee120dc745bd8d"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end