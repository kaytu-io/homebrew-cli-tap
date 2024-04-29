class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "0.3.55"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.55/kaytu_0.3.55_darwin_amd64.tar.gz"
    sha256 "5a06794e20b61f9d38d825fa3dea8cf71369691a76cb335ae9dfd66dfc106f43"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.55/kaytu_0.3.55_darwin_arm64.tar.gz"
    sha256 "9e2d9b262cbf094935e986359f3cbd051ac49227def754053cd2c265a4585ace"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.55/kaytu_0.3.55_linux_arm64.tar.gz"
    sha256 "4fd12421147e79b0d3a5655dcac77c1a1282a9d80ae5b4c60e76fe0059718654"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.55/kaytu_0.3.55_linux_amd64.tar.gz"
    sha256 "6d8e434b6402adfecbe6eda8b4c36056bd92c2121b8657988bf7c2a3d38f8c3e"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end