class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "0.5.2"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.5.2/kaytu_0.5.2_darwin_amd64.tar.gz"
    sha256 "c6b995c78c03d3b0e7e69b8ff7f8e54ca1bea292f13be08d9851174265be475a"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.5.2/kaytu_0.5.2_darwin_arm64.tar.gz"
    sha256 "8fb4269660fedd3cf203872673076efc68a98095d19f7a4514fce27b38d5260d"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.5.2/kaytu_0.5.2_linux_arm64.tar.gz"
    sha256 "285940706d008066f1e2847e821237755e613f77a48dccb7b5a65da295f97893"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.5.2/kaytu_0.5.2_linux_amd64.tar.gz"
    sha256 "31a7f88da04983cae85fb140f1f4ab08ad48f15268f33be6abbafb0e7e064954"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end