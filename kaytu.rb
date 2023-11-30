class Kaytu < Formula
  desc "CLI application for Kaytu"
  homepage "https://github.com/kaytu-io/cli-program"
  version "1.14.22"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.14.22/ktucli-macos-amd64"
    sha256 "a31ddd9973114aaf75c235512d238bc77b9d431acd3171d64d4f1ac9e5e6487e"
    def install
      bin.install "ktucli-macos-amd64" => "kaytu"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.14.22/ktucli-macos-arm64"
    sha256 "2e082e6b2efb0bf31f9d29b1f8358a03f98f8b7782f5ccc0de110344a3ace9c4"
    def install
      bin.install "ktucli-macos-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.14.22/ktucli-linux-arm64"
    sha256 "0876886fb72649c49745353e6e77d58855b3463ed649e3576adae4be4bd9cf4e"
    def install
      bin.install "ktucli-linux-arm64" => "kaytu"
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kaytu-io/cli-program/releases/download/v1.14.22/ktucli-linux-amd64"
    sha256 "a1455cc14785115f1bfc7d9e6e6f942c845c8847563417f5d9c8f9456f5e0f22"
    def install
      bin.install "ktucli-linux-amd64" => "kaytu"
    end
  end


  test do
    system "#{bin}/kaytu", "--version"
  end
end