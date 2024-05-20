class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "0.8.7"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.8.7/kaytu_0.8.7_darwin_amd64.tar.gz"
    sha256 "c7bfedad8ae4854755f764c0a7fc7768d05fe45c146fd81539267e489d6b333f"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.8.7/kaytu_0.8.7_darwin_arm64.tar.gz"
    sha256 "b47d4cc0d0e4c4a12595ce45d62b700cd80b679e52958aa4fd32143e8ac06efb"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.8.7/kaytu_0.8.7_linux_arm64.tar.gz"
    sha256 "66a312b4d809edd0fb2c482fdd00220312a3420c948a0b2b356b95ff2a44d179"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.8.7/kaytu_0.8.7_linux_amd64.tar.gz"
    sha256 "89156630e2ed337975db4841fcf7067725c5e75b5927c0384a2ab1de13035300"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end