class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "1.14.19"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.14.19/ktucli-macos-amd64"
    sha256 "a5a91d328e047257d4ba59212e2bfd33f1b86658bc97a20f2ffd6c1630f45285"
    def install
      bin.install "ktucli-macos-amd64" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.14.19/ktucli-macos-arm64"
    sha256 "361795c9e0eb3ecc00a7fb724f195be3f15f9b9af530a70c161c497546392835"
    def install
      bin.install "ktucli-macos-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.14.19/ktucli-linux-arm64"
    sha256 "29dbe92e9eb30135cd592191d0711f63b3c6c55ad4211510fdd4107ef3e5c6fe"
    def install
      bin.install "ktucli-linux-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.14.19/ktucli-linux-amd64"
    sha256 "49d003881c699076a6a4f40a69ca58d95a0456ca450091b7ae3fdc50f8d21a57"
    def install
      bin.install "ktucli-linux-amd64" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end