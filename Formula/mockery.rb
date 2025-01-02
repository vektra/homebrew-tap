# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mockery < Formula
  desc "A mock code autogenerator for Go"
  homepage "https://github.com/vektra/mockery"
  version "3.0.0-alpha.6"

  on_macos do
    on_intel do
      url "https://github.com/vektra/mockery/releases/download/v3.0.0-alpha.6/mockery_3.0.0-alpha.6_Darwin_x86_64.tar.gz"
      sha256 "a5ac7261c40a8c6d78d510d694c13ed759ca60a56320825c5489e74ce3642156"

      def install
        bin.install "mockery"
      end
    end
    on_arm do
      url "https://github.com/vektra/mockery/releases/download/v3.0.0-alpha.6/mockery_3.0.0-alpha.6_Darwin_arm64.tar.gz"
      sha256 "84132924099d6636110cb38375bd2d08cb5cd3d57c680ccd01d97224bdac22ed"

      def install
        bin.install "mockery"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/vektra/mockery/releases/download/v3.0.0-alpha.6/mockery_3.0.0-alpha.6_Linux_x86_64.tar.gz"
        sha256 "d881f9fb0118e90924aba854f7c4292a43a77c9d231da14c07eca99048c8870d"

        def install
          bin.install "mockery"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/vektra/mockery/releases/download/v3.0.0-alpha.6/mockery_3.0.0-alpha.6_Linux_arm64.tar.gz"
        sha256 "5fc867a795509f5a8e0a4e98d33fe70ec39b09d21d4a4470963cd906dcc16780"

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
