# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mockery < Formula
  desc "A mock code autogenerator for Go"
  homepage "https://github.com/vektra/mockery"
  version "3.0.0-alpha.8"

  on_macos do
    on_intel do
      url "https://github.com/vektra/mockery/releases/download/v3.0.0-alpha.8/mockery_3.0.0-alpha.8_Darwin_x86_64.tar.gz"
      sha256 "5d0a4d5884a03d21550efe4187c0aef181102a7371f4aae66f9a3285f2003174"

      def install
        bin.install "mockery"
      end
    end
    on_arm do
      url "https://github.com/vektra/mockery/releases/download/v3.0.0-alpha.8/mockery_3.0.0-alpha.8_Darwin_arm64.tar.gz"
      sha256 "598788f76e2376602c3860961c0e0be3546895d9f4cb0016ac5a36edb4a94258"

      def install
        bin.install "mockery"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/vektra/mockery/releases/download/v3.0.0-alpha.8/mockery_3.0.0-alpha.8_Linux_x86_64.tar.gz"
        sha256 "a22c0823399a76dc5300e33d40892b57670bd9eb04027feec52f1812cc8d4ea4"

        def install
          bin.install "mockery"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/vektra/mockery/releases/download/v3.0.0-alpha.8/mockery_3.0.0-alpha.8_Linux_arm64.tar.gz"
        sha256 "fb9f8ee5b160b42ce0da75387ada690e6af6f5588ab519c59a70d229eeb33668"

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
