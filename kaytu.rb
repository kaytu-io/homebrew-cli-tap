class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "0.7.5"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.7.5/kaytu_0.7.5_darwin_amd64.tar.gz"
    sha256 "95c718d751d84fdc4ab3b7c020971948923df5acc66f07d2bbc85820e4d48888"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.7.5/kaytu_0.7.5_darwin_arm64.tar.gz"
    sha256 "91ace555063acab5399648f0a2326ceba0130d57103ea222ea170c17b4af11c0"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.7.5/kaytu_0.7.5_linux_arm64.tar.gz"
    sha256 "860a180e50d42a5c2eaa23f89513ab4f16758b97b4f830fd4a0580275632bbc5"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.7.5/kaytu_0.7.5_linux_amd64.tar.gz"
    sha256 "a68fab6f1808de157a5d4c3604b52b2e441833ebc56620ec47cf1b9144ce05b5"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end