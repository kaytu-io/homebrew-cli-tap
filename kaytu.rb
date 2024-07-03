# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kaytu < Formula
  desc ""
  homepage "https://github.com/kaytu-io/kaytu"
  version "0.14.5"

  on_macos do
    on_intel do
      url "https://github.com/kaytu-io/kaytu/releases/download/v0.14.5/kaytu_0.14.5_darwin_amd64.tar.gz"
      sha256 "aa49fe58f2efe83258ac7a12e979cc9f0f0b43ae2b0802873eab4300726282c7"

      def install
        bin.install "kaytu"
      end
    end
    on_arm do
      url "https://github.com/kaytu-io/kaytu/releases/download/v0.14.5/kaytu_0.14.5_darwin_arm64.tar.gz"
      sha256 "00987f4e5e95446301bebf2b21a182aab0a3730e93cb3bba26cbd97bfee87b3a"

      def install
        bin.install "kaytu"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kaytu-io/kaytu/releases/download/v0.14.5/kaytu_0.14.5_linux_amd64.tar.gz"
        sha256 "62978fc610ccbfe78557ebe61675e38b07359d36602f640b08d782993eb12fed"

        def install
          bin.install "kaytu"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kaytu-io/kaytu/releases/download/v0.14.5/kaytu_0.14.5_linux_arm64.tar.gz"
        sha256 "a070d78202f5246785c01483da3c29fd47fddee8bc7e95f6f093de9868751147"

        def install
          bin.install "kaytu"
        end
      end
    end
  end
end
