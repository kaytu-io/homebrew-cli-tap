# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kaytu < Formula
  desc ""
  homepage "https://github.com/kaytu-io/kaytu"
  version "0.14.2"

  on_macos do
    on_intel do
      url "https://github.com/kaytu-io/kaytu/releases/download/v0.14.2/kaytu_0.14.2_darwin_amd64.tar.gz"
      sha256 "116b0c4b9cabf6f727dfeb0ee085c1069aacabb6beeb0b9ced4b0e4d68e26d12"

      def install
        bin.install "kaytu"
      end
    end
    on_arm do
      url "https://github.com/kaytu-io/kaytu/releases/download/v0.14.2/kaytu_0.14.2_darwin_arm64.tar.gz"
      sha256 "cfaa43ded992af71a7e9da27fd005d39b17001e455b7983eb442c4c396de2bcc"

      def install
        bin.install "kaytu"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kaytu-io/kaytu/releases/download/v0.14.2/kaytu_0.14.2_linux_amd64.tar.gz"
        sha256 "380b1227fa9412f4420713e4e2bb61429029a4337a74995390ba877aade9a118"

        def install
          bin.install "kaytu"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kaytu-io/kaytu/releases/download/v0.14.2/kaytu_0.14.2_linux_arm64.tar.gz"
        sha256 "55c2fd292370d3ec9774924a5df4ccd463192a2962792b6184ce6b48075521fd"

        def install
          bin.install "kaytu"
        end
      end
    end
  end
end
