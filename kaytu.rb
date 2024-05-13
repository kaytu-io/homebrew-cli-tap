class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "0.7.6"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.7.6/kaytu_0.7.6_darwin_amd64.tar.gz"
    sha256 "482d65bfb2f0887f599025b495a143dae13297bcfd3f79b943ce75d06a5a530c"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.7.6/kaytu_0.7.6_darwin_arm64.tar.gz"
    sha256 "0d20a96f8d8e83996ca79831f7a3a64da2dfff390628c0fca9643f5061d879df"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.7.6/kaytu_0.7.6_linux_arm64.tar.gz"
    sha256 "36352f6da95cdeeeeb49002b1aea6bc28f95b23af65009811af5091836a3e977"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/kaytu/releases/download/v0.7.6/kaytu_0.7.6_linux_amd64.tar.gz"
    sha256 "181064efde22e106c0045b5d04443c0e0580912c073f65d9cca1772a1d639064"
    def install
      bin.install "kaytu" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end