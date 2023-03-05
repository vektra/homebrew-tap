# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mockery < Formula
  desc "A mock code autogenerator for Go"
  homepage "https://github.com/vektra/mockery"
  version "2.21.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vektra/mockery/releases/download/v2.21.0/mockery_2.21.0_Darwin_arm64.tar.gz"
      sha256 "1169362633bc4349679d8363e0f2001d1399bdb5699ec4b8596bd82d99db61e6"

      def install
        bin.install "mockery"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/vektra/mockery/releases/download/v2.21.0/mockery_2.21.0_Darwin_x86_64.tar.gz"
      sha256 "7810c7359b8d8f011919cb19aab0626156aebd795854b219ad6081e24744d4e3"

      def install
        bin.install "mockery"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/vektra/mockery/releases/download/v2.21.0/mockery_2.21.0_Linux_x86_64.tar.gz"
      sha256 "ca239968944d350be00c5975fab32cc2589d1aa6db6826e5c288a1f52d637ff4"

      def install
        bin.install "mockery"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/vektra/mockery/releases/download/v2.21.0/mockery_2.21.0_Linux_arm64.tar.gz"
      sha256 "f18e69ac4ca93cc87c083304b0e37cacb0d0b4eb7f7522b1cc02c1170b3e266c"

      def install
        bin.install "mockery"
      end
    end
  end

  test do
    system "#{bin}mockery --version"
  end
end
