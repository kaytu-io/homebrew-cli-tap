# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kaytu < Formula
  desc ""
  homepage "https://github.com/kaytu-io/kaytu"
  version "0.14.4"

  on_macos do
    on_intel do
      url "https://github.com/kaytu-io/kaytu/releases/download/v0.14.4/kaytu_0.14.4_darwin_amd64.tar.gz"
      sha256 "98df6dcba223015a79e539524377f484271d2e9319296e0aab56413c13d547b8"

      def install
        bin.install "kaytu"
      end
    end
    on_arm do
      url "https://github.com/kaytu-io/kaytu/releases/download/v0.14.4/kaytu_0.14.4_darwin_arm64.tar.gz"
      sha256 "49472d2fe0866095a4f96a5ba2f3ab2fbfd0e349e5a0b04876be327729a0f2e0"

      def install
        bin.install "kaytu"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kaytu-io/kaytu/releases/download/v0.14.4/kaytu_0.14.4_linux_amd64.tar.gz"
        sha256 "0f08b56491946026b157bd670a3e226943debce4a93d8cb74b85354c9da435f1"

        def install
          bin.install "kaytu"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kaytu-io/kaytu/releases/download/v0.14.4/kaytu_0.14.4_linux_arm64.tar.gz"
        sha256 "1524ec20d5f257d3143d57cdc7ff9908ca27dc7c1359780f23e31898c69848f4"

        def install
          bin.install "kaytu"
        end
      end
    end
  end
end
