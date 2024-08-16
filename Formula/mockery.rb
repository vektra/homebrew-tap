# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mockery < Formula
  desc "A mock code autogenerator for Go"
  homepage "https://github.com/vektra/mockery"
  version "2.44.2"

  on_macos do
    on_intel do
      url "https://github.com/vektra/mockery/releases/download/v2.44.2/mockery_2.44.2_Darwin_x86_64.tar.gz"
      sha256 "3f3ee0ae732512fd7dfbcc44d226d2c441d71e0d7a583f567bb813f4ba2332cf"

      def install
        bin.install "mockery"
      end
    end
    on_arm do
      url "https://github.com/vektra/mockery/releases/download/v2.44.2/mockery_2.44.2_Darwin_arm64.tar.gz"
      sha256 "d922054e256e18d0690f91c990cd87479e0f0370198d8ee3f8373dd27e0c6fe2"

      def install
        bin.install "mockery"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/vektra/mockery/releases/download/v2.44.2/mockery_2.44.2_Linux_x86_64.tar.gz"
        sha256 "e3835d9f32ed3bb20e088ca256f54aa2e281683a0e06a3ff7c4dca4739681207"

        def install
          bin.install "mockery"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/vektra/mockery/releases/download/v2.44.2/mockery_2.44.2_Linux_arm64.tar.gz"
        sha256 "49c6bd9baef6e054563167c81129cf1fa094a7680e7ad87200c31c6533c0d426"

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
