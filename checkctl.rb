# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Checkctl < Formula
  desc ""
  homepage "https://github.com/kaytu-io/checkctl"
  version "0.1.23"

  on_macos do
    on_intel do
      url "https://github.com/kaytu-io/checkctl/releases/download/v0.1.23/checkctl_0.1.23_darwin_amd64.tar.gz"
      sha256 "604d35ff6158f5b9cbcfb7c4a6dbd5e647db590e44314ee256df1a923bcdc58a"

      def install
        bin.install "checkctl"
      end
    end
    on_arm do
      url "https://github.com/kaytu-io/checkctl/releases/download/v0.1.23/checkctl_0.1.23_darwin_arm64.tar.gz"
      sha256 "d5ef90ee079507f33c98d1ba83447a719bb5e6dde4360336ad3d2b52c34d2299"

      def install
        bin.install "checkctl"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kaytu-io/checkctl/releases/download/v0.1.23/checkctl_0.1.23_linux_amd64.tar.gz"
        sha256 "669cce8870062d16a2f6b962b7a0c8f114e77076e58bade3df25d6a6b7cda34a"

        def install
          bin.install "checkctl"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kaytu-io/checkctl/releases/download/v0.1.23/checkctl_0.1.23_linux_arm64.tar.gz"
        sha256 "04005084c4b768f174619be195b4169bc36699fdfcb25d722632a59aa2a71b80"

        def install
          bin.install "checkctl"
        end
      end
    end
  end
end