class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "1.8.62"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.8.62/ktucli-macos-amd64"
    sha256 "2a8760716a555b8c9721ae5b24d22e579d9eb994fff4c40a8f0f4e63763a8eec"  
    def install
      bin.install "ktucli-macos-amd64" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.8.62/ktucli-macos-arm64"
    sha256 "68ec2024524524a3c09b9caeb43f5c9990a4e43d5d4724f31a214e33b8a57eb3"  
    def install
      bin.install "ktucli-macos-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.8.62/ktucli-linux-arm64"
    sha256 "69973030a2edca25a66329e25f4c1a14b366eb04fc5b6fadd79ea58c729eaa40"  
    def install
      bin.install "ktucli-linux-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.8.62/ktucli-linux-amd64"
    sha256 "4c7f0d61514cf67c3bdc39abc1cf4466b07c93d53a6aa557d033be7bfb0e6e21" 
    def install
      bin.install "ktucli-linux-amd64" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end