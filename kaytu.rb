class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "0.8.8"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.8.8/kaytu_0.8.8_darwin_amd64.tar.gz"
    sha256 "58fd95142ca57c2e40dccc9aee64d8d535f4a333e3ba8094d4057794a2cbf98b"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.8.8/kaytu_0.8.8_darwin_arm64.tar.gz"
    sha256 "14b4ae547f38bbdc05362fb68063e2496af38c9703e8893246dcfaa56d92ad46"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.8.8/kaytu_0.8.8_linux_arm64.tar.gz"
    sha256 "264538f8e7259b15ccf45961dea27dc2dc985b38c8205b8c97f7f7bdbd0be679"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.8.8/kaytu_0.8.8_linux_amd64.tar.gz"
    sha256 "849a7d8e2aa0666ab3eb6aeeb89c667e112f5aa2b11393c58fb51fbf82610241"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end