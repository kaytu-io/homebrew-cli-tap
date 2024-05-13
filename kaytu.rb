class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "0.7.7"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.7.7/kaytu_0.7.7_darwin_amd64.tar.gz"
    sha256 "d64553b0df62dac4fd7ae5eea44cdf058501075c8ffafa3cbf85d61bad66e0ee"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.7.7/kaytu_0.7.7_darwin_arm64.tar.gz"
    sha256 "c1b4b61eb104b791676d4208773e3ea3ea20274187dba6c422920a3ca7ff4060"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.7.7/kaytu_0.7.7_linux_arm64.tar.gz"
    sha256 "9aac5fac0b3178faf27a1152eb3ff0a7e72829f16cc69dec72bd1279cf0a8576"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.7.7/kaytu_0.7.7_linux_amd64.tar.gz"
    sha256 "10b22e7a9d60f1e0d7c2ca3c7173af721756889c03e9f81dad5ac352943e986e"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end