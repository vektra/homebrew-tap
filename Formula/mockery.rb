# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mockery < Formula
  desc "A mock code autogenerator for Go"
  homepage "https://github.com/vektra/mockery"
  version "2.49.0"

  on_macos do
    on_intel do
      url "https://github.com/vektra/mockery/releases/download/v2.49.0/mockery_2.49.0_Darwin_x86_64.tar.gz"
      sha256 "df37fa7bd0e3dab08d9ec615ad38edf1c5abe5f292f71ffa366d371c814e48f6"

      def install
        bin.install "mockery"
      end
    end
    on_arm do
      url "https://github.com/vektra/mockery/releases/download/v2.49.0/mockery_2.49.0_Darwin_arm64.tar.gz"
      sha256 "eaff692f26123f89c498eae5ba8749f956d8fc4cbb945fb413c5f42342678c7f"

      def install
        bin.install "mockery"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/vektra/mockery/releases/download/v2.49.0/mockery_2.49.0_Linux_x86_64.tar.gz"
        sha256 "029bd05ffb1920a1c88f5ac1e9e8205cac36e40a557c8fc63803b3f0b6692ee2"

        def install
          bin.install "mockery"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/vektra/mockery/releases/download/v2.49.0/mockery_2.49.0_Linux_arm64.tar.gz"
        sha256 "eeee0e8220dbf1b5d9a3ec1baef7cba1708edd574f383c7693b18828af9227ce"

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
