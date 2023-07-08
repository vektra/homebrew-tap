# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mockery < Formula
  desc "A mock code autogenerator for Go"
  homepage "https://github.com/vektra/mockery"
  version "2.30.18"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/vektra/mockery/releases/download/v2.30.18/mockery_2.30.18_Darwin_x86_64.tar.gz"
      sha256 "f79a23fb3bcb2007edd305a267bed8a85854f452c30e0fac6da78fc4882fe55e"

      def install
        bin.install "mockery"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/vektra/mockery/releases/download/v2.30.18/mockery_2.30.18_Darwin_arm64.tar.gz"
      sha256 "4e15e33f7fcdfa899af7d9e1f4cc7be2baa2dfce68e4ced7991e30fdbcfcc190"

      def install
        bin.install "mockery"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/vektra/mockery/releases/download/v2.30.18/mockery_2.30.18_Linux_arm64.tar.gz"
      sha256 "e514aced1144ad8857ae6f5f59a9467fc85334ff43fcca1925de92dc0f5f392b"

      def install
        bin.install "mockery"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/vektra/mockery/releases/download/v2.30.18/mockery_2.30.18_Linux_x86_64.tar.gz"
      sha256 "6bdcb8ca3b2d9041f79f4fd16adb6e8087405f5282379fb890ee34bc3d38388c"

      def install
        bin.install "mockery"
      end
    end
  end

  test do
    system "#{bin}mockery --version"
  end
end
