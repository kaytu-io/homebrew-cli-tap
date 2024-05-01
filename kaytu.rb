class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "0.5.4"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.5.4/kaytu_0.5.4_darwin_amd64.tar.gz"
    sha256 "bc423fc6cb7574e12cd82f363f938298af520753847dfe536359b85db6847d30"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.5.4/kaytu_0.5.4_darwin_arm64.tar.gz"
    sha256 "06e55f6b9cae60a15e559af9f97a84cd94a72e2abbadc185804faf4288b0cb85"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.5.4/kaytu_0.5.4_linux_arm64.tar.gz"
    sha256 "77db86080ddeb08e6f0552f68d1f5a41da59a512a3d8509ce99bff060a697ae5"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.5.4/kaytu_0.5.4_linux_amd64.tar.gz"
    sha256 "185307a4185fde527d3a58258b25e9b6e591202d562a3540ebdcf0acdf39a638"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end