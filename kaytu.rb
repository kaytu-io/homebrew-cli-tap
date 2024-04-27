class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "0.3.41"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.41/kaytu_0.3.41_darwin_amd64.tar.gz"
    sha256 "b7f5adc04bd0878f6200c5ea3078a42e8d9a90c27574bf85a4102f4cc0a45ce3"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.41/kaytu_0.3.41_darwin_arm64.tar.gz"
    sha256 "e1d968538f002f24b86c7c6c013dc9490bfa84494fe403763201a1db10d8cc97"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.41/kaytu_0.3.41_linux_arm64.tar.gz"
    sha256 "af1941f0c6074c4ace58143f1a11ae6b152a44cdda43383b5bc46c37ce2286ac"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.41/kaytu_0.3.41_linux_amd64.tar.gz"
    sha256 "61b9a04839620a0f3a0df5bcc32e142e816c4268b34265ffe73890108dab1002"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end