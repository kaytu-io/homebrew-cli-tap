class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "0.5.1"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.5.1/kaytu_0.5.1_darwin_amd64.tar.gz"
    sha256 "9fffb1aa1d43a1841e17a8c65c8d487b1c1030a89d674d3302a26272d7cf7a19"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.5.1/kaytu_0.5.1_darwin_arm64.tar.gz"
    sha256 "4c1b634d36c5331fa081426482ee639aca772d58cda4e12ceb255e153e0ed450"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.5.1/kaytu_0.5.1_linux_arm64.tar.gz"
    sha256 "bf4566a60df159375f44e0618bb7f91787f5cff8a2fbb7bdd95a77af6322fd06"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.5.1/kaytu_0.5.1_linux_amd64.tar.gz"
    sha256 "36dcef0cee621eb5af76c380d55eabccb7fbea32890abbb2565febc97f34e8fc"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end