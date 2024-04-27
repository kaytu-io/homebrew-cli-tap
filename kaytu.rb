class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "0.3.42"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.42/kaytu_0.3.42_darwin_amd64.tar.gz"
    sha256 "e1e8fb15a141466c08def24eb4eb796a2db12843d3af5e439fba93faff7067aa"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.42/kaytu_0.3.42_darwin_arm64.tar.gz"
    sha256 "ba95acc1eaa4cc6e6844bf36fe65c4201f22d4d26f432a54f5dd14da847f3991"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.42/kaytu_0.3.42_linux_arm64.tar.gz"
    sha256 "7f0618a0095a6874f404249c1221d0570b5a95f343573daa6535ac629dceddeb"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.42/kaytu_0.3.42_linux_amd64.tar.gz"
    sha256 "1e3b038c84cd3384e999ff3404b3c252100c6974badc2fa8787b3c6a1069656c"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end