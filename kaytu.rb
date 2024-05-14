class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "0.7.10"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.7.10/kaytu_0.7.10_darwin_amd64.tar.gz"
    sha256 "a197b6f0a12a4cf3ce9887a7996cb566a9c73ca6742b278a4b720f37745af9a2"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.7.10/kaytu_0.7.10_darwin_arm64.tar.gz"
    sha256 "af1fd6b6e9a3bef24c88a058401c52b91eb6fd5f971158fd4fed5e5da3a3c1c4"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.7.10/kaytu_0.7.10_linux_arm64.tar.gz"
    sha256 "d3181ef5f173bbf299ffeceefff0580ec307c745f7c37ab1f0215dfcb88d059f"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.7.10/kaytu_0.7.10_linux_amd64.tar.gz"
    sha256 "6140542212fb48e8ee61419d0f3cb687ceecf2219fa93fe9d62c8a93b606d32f"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end