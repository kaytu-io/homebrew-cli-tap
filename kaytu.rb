class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "0.6.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.6.0/kaytu_0.6.0_darwin_amd64.tar.gz"
    sha256 "8e0a5cd8d6b8d28122949bc7804500db98168a0612fffe8337aad8aec31d1be0"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.6.0/kaytu_0.6.0_darwin_arm64.tar.gz"
    sha256 "a506e1029ecd591d205fb5138ef57018b17c692467165695ac84d9933bddc179"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.6.0/kaytu_0.6.0_linux_arm64.tar.gz"
    sha256 "3489f3972703fb45de8a312934c4082a6efffb1d18963af1a6749a766a5958cd"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.6.0/kaytu_0.6.0_linux_amd64.tar.gz"
    sha256 "ba9d2212fdd4ec559ef7969b56beb4e7885100455e778981cab142c458df76ad"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end