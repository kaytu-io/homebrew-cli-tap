class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "0.3.59"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.59/kaytu_0.3.59_darwin_amd64.tar.gz"
    sha256 "cfed2af004a87501a34022f839863fe69a2d8d6f51f6f89392d310d0cf9357e4"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.59/kaytu_0.3.59_darwin_arm64.tar.gz"
    sha256 "d4c200e501e03d5529982f7953c978f4327df0f0a5b2f8f06ef5d8c7eb2db786"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.59/kaytu_0.3.59_linux_arm64.tar.gz"
    sha256 "0c417c75b9086b8f3420f05da6137feb575b3174463fcfe35853b742af2cba48"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.59/kaytu_0.3.59_linux_amd64.tar.gz"
    sha256 "39a10bc9b9b13e72fe8fa781a744034481f8e15a73f44d6f60b11df91d680f79"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end