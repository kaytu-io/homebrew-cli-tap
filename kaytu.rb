class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "0.8.2"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.8.2/kaytu_0.8.2_darwin_amd64.tar.gz"
    sha256 "85e7d00f9a9c9a09644d6755d580f203e0d609c66eace32747b46f13eb274338"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.8.2/kaytu_0.8.2_darwin_arm64.tar.gz"
    sha256 "02d17a6d6174269d5f1532e9b1fe160df8666652f0bb5811320033d7f5a6436f"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.8.2/kaytu_0.8.2_linux_arm64.tar.gz"
    sha256 "94a630120b2012af04b0979fc96f22c9b33ab11e79479f188ad204d223cdba10"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.8.2/kaytu_0.8.2_linux_amd64.tar.gz"
    sha256 "84d12eee8e201d7bbc4c4e1afe6fe9f50ab75f4c26622bcd08f7e535b395d713"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end