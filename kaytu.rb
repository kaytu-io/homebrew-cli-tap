class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "1.8.68"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.8.68/ktucli-macos-amd64"
    sha256 "914911fa690b3afeb327e7dbccc11a4c6cd5dbb708434d0815f16c1e5a8ea07a"  
    def install
      bin.install "ktucli-macos-amd64" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.8.68/ktucli-macos-arm64"
    sha256 "a7376d60b9de9942e21a581c420df1dcdb82372e7a7815bc99c495236c739820"  
    def install
      bin.install "ktucli-macos-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.8.68/ktucli-linux-arm64"
    sha256 "b104717cd5ca70d107556c414256fadf4eb9258d5fa2e3cd7d1731f8d54bafa3"  
    def install
      bin.install "ktucli-linux-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.8.68/ktucli-linux-amd64"
    sha256 "6dbaf4a942242e6adc8a5e9b6d223404b27faf2dd43b9fb581cee72e6c9aeb0e" 
    def install
      bin.install "ktucli-linux-amd64" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end