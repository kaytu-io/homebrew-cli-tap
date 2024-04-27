class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "0.3.46"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.46/kaytu_0.3.46_darwin_amd64.tar.gz"
    sha256 "876810a5d856f018c386f6401080c397dea400ce721cb27cc16ca4fce266b2f3"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.46/kaytu_0.3.46_darwin_arm64.tar.gz"
    sha256 "bb8c13d56edd0fd793add69e6c764281d04b90babc3083ce919b3fb4e33423f5"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.46/kaytu_0.3.46_linux_arm64.tar.gz"
    sha256 "79e98bb6aa31a7fc5d51cb928b2a197af2173c7ed6f0e07b2cdf8c084962d10d"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.46/kaytu_0.3.46_linux_amd64.tar.gz"
    sha256 "61f486b2dbcfe33b324fc5a252fa690369f6edebe47a63bffd2017caac6758c0"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end