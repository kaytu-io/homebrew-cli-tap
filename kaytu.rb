class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "0.3.48"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.48/kaytu_0.3.48_darwin_amd64.tar.gz"
    sha256 "ceeacf702b073636388a7c3240a0eeaab472eae81d3fc5faf7a562d0d1090dfa"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.48/kaytu_0.3.48_darwin_arm64.tar.gz"
    sha256 "4c65702c268479903e9b1cd0eaee28c2ee791abab4236e4141898af89f7554ee"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.48/kaytu_0.3.48_linux_arm64.tar.gz"
    sha256 "2abe4845b1f7f68db3f6a3e43371b95ed299ac66afdd60ae3d9deffb2943d29c"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.48/kaytu_0.3.48_linux_amd64.tar.gz"
    sha256 "d0ffa15e92a4bf24ebc860a5309712df4d8154052f7fce4ae9303b52ade29c0d"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end