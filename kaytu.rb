class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "1.14.10"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.14.10/ktucli-macos-amd64"
    sha256 "0008627b20ca20aaa47c52ee26ba1e14bdaaa85730098f066d369bb923cbbdc5"
    def install
      bin.install "ktucli-macos-amd64" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.14.10/ktucli-macos-arm64"
    sha256 "a67942b36819063a7c158f1ab2a0fb5779a9e589cf7b8e6ded55fc36dd694a1f"
    def install
      bin.install "ktucli-macos-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.14.10/ktucli-linux-arm64"
    sha256 "d5de4774454315e4aba3338ead4ce604cc53e1062b59d4c2212ba42b283c2ee4"
    def install
      bin.install "ktucli-linux-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.14.10/ktucli-linux-amd64"
    sha256 "1a582021195fe03de56fff915e25e08c464eaceaadc8d9d31348d53ed431a04d"
    def install
      bin.install "ktucli-linux-amd64" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end