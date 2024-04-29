class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "0.3.54"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.54/kaytu_0.3.54_darwin_amd64.tar.gz"
    sha256 "67fd0661e31e43622830624d39d7018e8c93bcb028d5ff82bfc8c7f26a4dea14"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.54/kaytu_0.3.54_darwin_arm64.tar.gz"
    sha256 "8e9fa5c16a0ae0ebda11ef45252f5154013b8a5daf152783fddb2a26edc5243b"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.54/kaytu_0.3.54_linux_arm64.tar.gz"
    sha256 "4c0464654c85d27c279988609325e7f78ad91665fc8c0078aa2bcf8b4b858b82"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.54/kaytu_0.3.54_linux_amd64.tar.gz"
    sha256 "a03e945db5922952c955a2a5c148c83a4460ebafa0e7d7a99f45c62d232cce20"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end