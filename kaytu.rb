class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "0.4.1"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.4.1/kaytu_0.4.1_darwin_amd64.tar.gz"
    sha256 "b86f416921ba71c03c8e544be06c35da4c19d840912872d4e2ee08ac731e62c9"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.4.1/kaytu_0.4.1_darwin_arm64.tar.gz"
    sha256 "2a78d950ff6ddc1d0c840a50ebac1ea655c507469061c8af37cc780da5addbaa"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.4.1/kaytu_0.4.1_linux_arm64.tar.gz"
    sha256 "aa809889ee1ecdc58f4baa769825462acf6dd69e18c4c5437f1541dd7d3895b6"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.4.1/kaytu_0.4.1_linux_amd64.tar.gz"
    sha256 "d7864537d98c3d296123ceadffd1cb7b05cfcff9030ad45c7b02ac3a661da165"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end