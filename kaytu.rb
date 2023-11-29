class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "1.14.16"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.14.16/ktucli-macos-amd64"
    sha256 "ea13d07e7d507f8f3c07cc70950061dbeab44f4f0b002982b5859ef2a81cc310"
    def install
      bin.install "ktucli-macos-amd64" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.14.16/ktucli-macos-arm64"
    sha256 "0e8821cc3844ae88cba2833470a132ae8a1b3f726fa15e74c331bf314498ac1e"
    def install
      bin.install "ktucli-macos-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.14.16/ktucli-linux-arm64"
    sha256 "7c05124427442b3f037bb604f9f7704b81e226e26e03d2ffa06da9d33332a513"
    def install
      bin.install "ktucli-linux-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.14.16/ktucli-linux-amd64"
    sha256 "d1fa6341eb85c0fed487aa03daa731a5b0cfe21d5e30b4169a57cdfd293c29dc"
    def install
      bin.install "ktucli-linux-amd64" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end