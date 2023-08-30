class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "1.8.71"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.8.71/ktucli-macos-amd64"
    sha256 "c6190ff76a29bc1b23394cc1a2ec6dc856167b090b415575a1cc16394910da85"  
    def install
      bin.install "ktucli-macos-amd64" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.8.71/ktucli-macos-arm64"
    sha256 "4289ff396addd4215c66100d374666a8415fd28d231a234ac9d6f1254d3c8d35"  
    def install
      bin.install "ktucli-macos-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.8.71/ktucli-linux-arm64"
    sha256 "f59fc9c92a33a8d9533b0803357a20ff8dd2f0113182bb4cc2981797339c5390"  
    def install
      bin.install "ktucli-linux-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.8.71/ktucli-linux-amd64"
    sha256 "415b80285dd14df252f4f2181968820fdb3d24cd62ed212ea9a602766506336e" 
    def install
      bin.install "ktucli-linux-amd64" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end