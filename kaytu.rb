class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "0.4.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.4.0/kaytu_0.4.0_darwin_amd64.tar.gz"
    sha256 "be5aaa95c2f8749ba9d7ebb51cdf08f5f35794a970fdfb61d089121e3c92bbcc"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.4.0/kaytu_0.4.0_darwin_arm64.tar.gz"
    sha256 "3e42c16d220f0a34364afc4cfd5c0647f3c8c8851a80b8e213d5e22097ae6976"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.4.0/kaytu_0.4.0_linux_arm64.tar.gz"
    sha256 "3540fa13922c9014b5f8ec5d10f52daee7ab2d7905707ce81505c233d0175542"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.4.0/kaytu_0.4.0_linux_amd64.tar.gz"
    sha256 "094a34c81b3007f607fc54013a2183c08a8cca0e14fa213bc0a47125a36b972a"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end