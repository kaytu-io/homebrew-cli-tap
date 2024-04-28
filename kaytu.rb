class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "0.3.49"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.49/kaytu_0.3.49_darwin_amd64.tar.gz"
    sha256 "7358c76f5f6540783df60727cea7b1e1b39921761e855c083a91d8d880d20297"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.49/kaytu_0.3.49_darwin_arm64.tar.gz"
    sha256 "159ce93520e11daae7ae34ae9bd8d3150eb5f33fda5177e9f1c5176180422bfa"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.49/kaytu_0.3.49_linux_arm64.tar.gz"
    sha256 "e369fcb2d4054f65143fc50d84c045cd1bd0f726faa0fe9b57d32219e06b71ce"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.49/kaytu_0.3.49_linux_amd64.tar.gz"
    sha256 "956b06ef0c01cd15d7f8e61c11342a20dedcaacc6ab550ef5d79c4a386a87f6f"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end