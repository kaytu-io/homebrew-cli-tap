class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "0.8.3"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.8.3/kaytu_0.8.3_darwin_amd64.tar.gz"
    sha256 "608b83643e5aee0f99eb1cd6582d698350bdf53d309c5a8ceeffd49267ae846d"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.8.3/kaytu_0.8.3_darwin_arm64.tar.gz"
    sha256 "2e3904793a3aa2facb205b0ffd6b89be5b9f111939fd793901d3b0686f806b85"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.8.3/kaytu_0.8.3_linux_arm64.tar.gz"
    sha256 "efb10d95084330701dad79b17203a4a8c84e9c5d73c0cad135397f71dcea6d3b"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.8.3/kaytu_0.8.3_linux_amd64.tar.gz"
    sha256 "38fc25936eba0a0230873a981e70d9df959238a72ee4d510c381282e91b40a07"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end