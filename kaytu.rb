class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "0.5.3"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.5.3/kaytu_0.5.3_darwin_amd64.tar.gz"
    sha256 "b599069471173809107c47ee64d90d175abd11330a480095badffb0c0e01c153"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.5.3/kaytu_0.5.3_darwin_arm64.tar.gz"
    sha256 "6e380ffe798d88ddcf6c293c5d4a2c01ae14770c0daca702549100537f905189"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.5.3/kaytu_0.5.3_linux_arm64.tar.gz"
    sha256 "13068a56d1914921789499aa847fdf830ac1a30b32f33dfc7a4208981ea8f864"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.5.3/kaytu_0.5.3_linux_amd64.tar.gz"
    sha256 "af4d847e9f256842c1d3f590a9a43c824060de7b5fc275c9a467e161071e3838"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end