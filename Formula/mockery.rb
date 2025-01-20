# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mockery < Formula
  desc "A mock code autogenerator for Go"
  homepage "https://github.com/vektra/mockery"
  version "3.0.0-alpha.20"

  on_macos do
    on_intel do
      url "https://github.com/vektra/mockery/releases/download/v3.0.0-alpha.20/mockery_3.0.0-alpha.20_Darwin_x86_64.tar.gz"
      sha256 "ed30197bca72d5b4c674beec5e8c7af1a7404da0dffd6585817437dca3a8c3c4"

      def install
        bin.install "mockery"
      end
    end
    on_arm do
      url "https://github.com/vektra/mockery/releases/download/v3.0.0-alpha.20/mockery_3.0.0-alpha.20_Darwin_arm64.tar.gz"
      sha256 "58633e9d4e73835e2b1e48383714f1efbb338cafb9ea49a6d4360fceffb36e17"

      def install
        bin.install "mockery"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/vektra/mockery/releases/download/v3.0.0-alpha.20/mockery_3.0.0-alpha.20_Linux_x86_64.tar.gz"
        sha256 "befc553c02339d3924e0e8759baaafbf80ec3a2d9f7290c56ff15fabe2858e9e"

        def install
          bin.install "mockery"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/vektra/mockery/releases/download/v3.0.0-alpha.20/mockery_3.0.0-alpha.20_Linux_arm64.tar.gz"
        sha256 "43d4348dfbbf5ccc56f9b4884b34a2ca87e7fd2924c60727f25ba4cb4ab543f0"

        def install
          bin.install "mockery"
        end
      end
    end
  end

  test do
    system "#{bin}mockery --version"
  end
end
