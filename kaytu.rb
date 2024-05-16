class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "0.8.4"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.8.4/kaytu_0.8.4_darwin_amd64.tar.gz"
    sha256 "b63c4c9114c88facf4930a2fc0eed16f396c0212acd26079cf3e0b39e5420188"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.8.4/kaytu_0.8.4_darwin_arm64.tar.gz"
    sha256 "1f90e11b67bcd2d3bbaaf028fc8d8d4f49da62479c35136141340f1acb766c5c"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.8.4/kaytu_0.8.4_linux_arm64.tar.gz"
    sha256 "f278d39f1c5fbad4bf2d14b32a67e4ebd1839318a137c8a51ace9c5bb7fb00fe"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.8.4/kaytu_0.8.4_linux_amd64.tar.gz"
    sha256 "da0158093424d0a480a876f570a0621560cb7c04c9680ee53cdbb3f324fdd28e"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end