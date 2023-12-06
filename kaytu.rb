class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "1.14.26"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.14.26/ktucli-macos-amd64"
    sha256 "b348f08b0c5fa7c1eac0fb666345ae424f026bfa2da3e2988a44dc0fe4c2a6ba"
    def install
      bin.install "ktucli-macos-amd64" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.14.26/ktucli-macos-arm64"
    sha256 "59bbd57efb28d4ace42f556af11ce05a30717333f11f0501cb0d0534e2f2344f"
    def install
      bin.install "ktucli-macos-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.14.26/ktucli-linux-arm64"
    sha256 "01f0aedc7bc25cf669e7e0e8219e103b86488f3cda8c94c09e02cd8dcb32de4d"
    def install
      bin.install "ktucli-linux-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.14.26/ktucli-linux-amd64"
    sha256 "ba270faffb97b66b573fcf08e86c93f8005ab1bdbd2a38d76d174cad6335e843"
    def install
      bin.install "ktucli-linux-amd64" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end