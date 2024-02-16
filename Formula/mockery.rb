# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mockery < Formula
  desc "A mock code autogenerator for Go"
  homepage "https://github.com/vektra/mockery"
  version "2.42.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vektra/mockery/releases/download/v2.42.0/mockery_2.42.0_Darwin_arm64.tar.gz"
      sha256 "89ced648560168274ca4a41d2313b7dff4eeb1fca3c3689e348ed2599c359337"

      def install
        bin.install "mockery"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/vektra/mockery/releases/download/v2.42.0/mockery_2.42.0_Darwin_x86_64.tar.gz"
      sha256 "83191e2c15cdd695d423dec3720f78e3cc7d8ea5728e1cad4ae7681aa468bccb"

      def install
        bin.install "mockery"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/vektra/mockery/releases/download/v2.42.0/mockery_2.42.0_Linux_arm64.tar.gz"
      sha256 "8a2bc03f14ee535ff954fdac626ebd51141da4ee3329709f286f11995075d263"

      def install
        bin.install "mockery"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/vektra/mockery/releases/download/v2.42.0/mockery_2.42.0_Linux_x86_64.tar.gz"
      sha256 "264b847ef8f1408e51608c9ab98471d36089782e249f63153b00e735fe0cf417"

      def install
        bin.install "mockery"
      end
    end
  end

  test do
    system "#{bin}mockery --version"
  end
end
