# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kaytu < Formula
  desc ""
  homepage "https://github.com/kaytu-io/kaytu"
  version "0.10.5"

  on_macos do
    on_intel do
      url "https://github.com/kaytu-io/kaytu/releases/download/v0.10.5/kaytu_0.10.5_darwin_amd64.tar.gz"
      sha256 "575faa1fb1c974b38bccb358d118500666d1fd688637ed125f6b95c5c29d3755"

      def install
        bin.install "kaytu"
      end
    end
    on_arm do
      url "https://github.com/kaytu-io/kaytu/releases/download/v0.10.5/kaytu_0.10.5_darwin_arm64.tar.gz"
      sha256 "acbd149ea77401517ba9b56275fe06c1f0be0e81198c0bdf6a0a39e0c5b83c9e"

      def install
        bin.install "kaytu"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kaytu-io/kaytu/releases/download/v0.10.5/kaytu_0.10.5_linux_amd64.tar.gz"
        sha256 "5149002a0883a4f72cc1b9ec1c1aff84fdd4554c62c4b0919cb2a3a3d0689011"

        def install
          bin.install "kaytu"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kaytu-io/kaytu/releases/download/v0.10.5/kaytu_0.10.5_linux_arm64.tar.gz"
        sha256 "8e0fcabe2f2fa9ed3c2aea5f90f96a460f6718ee9ee2f9c3068ba841489fe154"

        def install
          bin.install "kaytu"
        end
      end
    end
  end
end
