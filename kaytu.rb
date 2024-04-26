class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "0.3.35"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.35/kaytu_0.3.35_darwin_amd64.tar.gz"
    sha256 "f85624e9cfd58d17f27bed8ca136b773339edf4565e6ea08917d4366f6e496aa"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.35/kaytu_0.3.35_darwin_arm64.tar.gz"
    sha256 "cf176937d0c37c85eb259d2e4c6bef71bdfecc6a58daae4a5df57b464505b914"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.35/kaytu_0.3.35_linux_arm64.tar.gz"
    sha256 "b4b66fe6343db05974967e51e04a13cd710b09a66586e6ba5a04b947cf485f48"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.35/kaytu_0.3.35_linux_amd64.tar.gz"
    sha256 "216c571533ea78dc36d5dea03b68c1f86b8fc196204bb47d9c977d2497cae152"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end