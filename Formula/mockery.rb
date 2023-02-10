# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mockery < Formula
  desc "A mock code autogenerator for Go"
  homepage "https://github.com/vektra/mockery"
  version "2.19.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vektra/mockery/releases/download/v2.19.0/mockery_2.19.0_Darwin_arm64.tar.gz"
      sha256 "cd0ee342f3b04bb382519af3d7c1f3cc079e5aff548b9b645cd3424814a1e181"

      def install
        bin.install "mockery"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/vektra/mockery/releases/download/v2.19.0/mockery_2.19.0_Darwin_x86_64.tar.gz"
      sha256 "774f5ad8c96591ea8c0754951f899f3bfb274187706e39ee6542518ff17c32da"

      def install
        bin.install "mockery"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/vektra/mockery/releases/download/v2.19.0/mockery_2.19.0_Linux_arm64.tar.gz"
      sha256 "1695ad7ca9f2ee4439fbb0e1238d91b32a202ffc4dea1d6386b1073ddeb2a452"

      def install
        bin.install "mockery"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/vektra/mockery/releases/download/v2.19.0/mockery_2.19.0_Linux_x86_64.tar.gz"
      sha256 "fd768709f36171b90d319428ff552c96081512edfd44dd22d66d7995ca4f4bf6"

      def install
        bin.install "mockery"
      end
    end
  end

  test do
    system "#{bin}mockery --version"
  end
end
