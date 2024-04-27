class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "0.3.37"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.37/kaytu_0.3.37_darwin_amd64.tar.gz"
    sha256 "4c51847d61304f2ad8d8c200fceceef3ea33e055b137e7942f05d445d86a985c"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.37/kaytu_0.3.37_darwin_arm64.tar.gz"
    sha256 "cf48679c2e0a8a932213946e97fbd61e0371d216aabf04754745de480a6178d3"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.37/kaytu_0.3.37_linux_arm64.tar.gz"
    sha256 "10ce03791c444a3b6f5bb50f715e48c58d2ec50be1b4e8631a1455a4fbaf9986"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.37/kaytu_0.3.37_linux_amd64.tar.gz"
    sha256 "3e4018b7cdfaa74954f68350c433651a5a96864a3b83509b197b92ba2ebb0f82"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end