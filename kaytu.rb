class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "1.13.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.13.0/ktucli-macos-amd64"
    sha256 "a41cdabe642223d294f8396cb3f64ba492f178eb8600bbbb88f644efb38ef30f"  
    def install
      bin.install "ktucli-macos-amd64" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.13.0/ktucli-macos-arm64"
    sha256 "61058368e880d36bb2f70a5c267a3315527839cd6fe749c55b5e9e7c1a98dce1"  
    def install
      bin.install "ktucli-macos-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.13.0/ktucli-linux-arm64"
    sha256 "e44beb8ee7e7341a7e9b5a3aee6b855ffddafad2d59d68f4a991e362bd30a630"  
    def install
      bin.install "ktucli-linux-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.13.0/ktucli-linux-amd64"
    sha256 "fe7c3d3fcd08f51d715951b691e8f13d2e2177827d36f213d07c8eb1d47f638a" 
    def install
      bin.install "ktucli-linux-amd64" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end