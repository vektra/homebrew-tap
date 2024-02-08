# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mockery < Formula
  desc "A mock code autogenerator for Go"
  homepage "https://github.com/vektra/mockery"
  version "2.40.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/vektra/mockery/releases/download/v2.40.2/mockery_2.40.2_Darwin_x86_64.tar.gz"
      sha256 "2effd7a8a619b5a5370d01db29aa385d33376b95da7b93037f000a2007c5fc56"

      def install
        bin.install "mockery"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/vektra/mockery/releases/download/v2.40.2/mockery_2.40.2_Darwin_arm64.tar.gz"
      sha256 "13b6750fbfcebc9c6210d1145c4e596d76cc38e8178964a2c77e8bd98ff4cc19"

      def install
        bin.install "mockery"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/vektra/mockery/releases/download/v2.40.2/mockery_2.40.2_Linux_arm64.tar.gz"
      sha256 "537d66af779f16317beed1319af9585194556d6e96d7b740a39ee1fe675013cb"

      def install
        bin.install "mockery"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/vektra/mockery/releases/download/v2.40.2/mockery_2.40.2_Linux_x86_64.tar.gz"
      sha256 "2f5045cfff18fbef40fe9bc838e93a223795dae46adbdd70ed34349c3c5bff95"

      def install
        bin.install "mockery"
      end
    end
  end

  test do
    system "#{bin}mockery --version"
  end
end
