class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "0.3.57"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.57/kaytu_0.3.57_darwin_amd64.tar.gz"
    sha256 "cd33e86504264cbcf3adb73aa2363426d1967bc37fdab420cdf0401bbc16a8a6"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.57/kaytu_0.3.57_darwin_arm64.tar.gz"
    sha256 "64d4affd495344c66f2a4db7b5e159044bae11331bc409fb682356115386f6b5"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.57/kaytu_0.3.57_linux_arm64.tar.gz"
    sha256 "c7c41d9b161ddc394b0194c96810cdae0f1d4bc8c13997d8c3d4ee46f4961b2b"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.3.57/kaytu_0.3.57_linux_amd64.tar.gz"
    sha256 "b5708aba66b7709b3b7ce4580a333b18d26154157d3cfc546f1be09b3a0aea4e"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end