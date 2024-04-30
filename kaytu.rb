class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "0.5.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.5.0/kaytu_0.5.0_darwin_amd64.tar.gz"
    sha256 "79cbbd1993d61ab94b157b41fbf7d6259c67395869cd7ddae25474a072faf3a7"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.5.0/kaytu_0.5.0_darwin_arm64.tar.gz"
    sha256 "b743032bf9b678e83b0186531c58d963fb0629cfbf1852797b8f107bb84fd4c0"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.5.0/kaytu_0.5.0_linux_arm64.tar.gz"
    sha256 "075a35e75f68ff456295a6403d23f72f001e2f1f9a128d54efff1e00c22ac116"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.5.0/kaytu_0.5.0_linux_amd64.tar.gz"
    sha256 "778fecb880162dd2e0a5cea31511614f238b47e5e0afac8f6a2c81256079de8e"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end