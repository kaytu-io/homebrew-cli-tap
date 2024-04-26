class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "0.3.29"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.29/kaytu_0.3.29_darwin_amd64.tar.gz"
    sha256 "c41990c487b9db82e365e21d6ccb30334260e644c29ef5a99d92f41a1eade8bd"
    def install
      system "tar", "-xf", "kaytu_0.3.29_darwin_amd64.tar.gz"
      bin.install "kaytu_0.3.29_darwin_amd64" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.29/kaytu_0.3.29_darwin_arm64.tar.gz"
    sha256 "2d1258c07233609d4bc883932c0709633167862765259be5d1e974cfdbccf6c5"
    def install
      system "tar", "-xf", "kaytu_0.3.29_darwin_arm64.tar.gz"
      bin.install "kaytu_0.3.29_darwin_arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.29/kaytu_0.3.29_linux_arm64.tar.gz"
    sha256 "3e1b5a4d9e8b831101e17871d2b0c6e3f66632821808266627a868d7d7a8cd80"
    def install
      system "tar", "-xf", "kaytu_0.3.29_linux_arm64.tar.gz"
      bin.install "kaytu_0.3.29_linux_arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.29/kaytu_0.3.29_linux_amd64.tar.gz"
    sha256 "44b9d7228d202b00bad826af620e341d2601d56111efd0c4fd38dbbf5b1991cf"
    def install
      system "tar", "-xf", "kaytu_0.3.29_linux_amd64.tar.gz"
      bin.install "kaytu_0.3.29_linux_amd64" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end