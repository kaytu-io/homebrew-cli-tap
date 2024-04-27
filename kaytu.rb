class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "0.3.47"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.47/kaytu_0.3.47_darwin_amd64.tar.gz"
    sha256 "e6147742d02a745365420add96de3040092ea6f8aabc8099de258c02d0b14906"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.47/kaytu_0.3.47_darwin_arm64.tar.gz"
    sha256 "9dfe89268c7be65e22699e39224b5a964a9b75d18f1b8bd2fc0cc293ef866d50"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.47/kaytu_0.3.47_linux_arm64.tar.gz"
    sha256 "b1fba8d5002f4b613c306fe24d439c102ff6470da5dcc643bc971576e7b92e6b"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.47/kaytu_0.3.47_linux_amd64.tar.gz"
    sha256 "d06e26feadabe2803e34e21848bfe992fdab93811b80f94be7e350d82758958a"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end