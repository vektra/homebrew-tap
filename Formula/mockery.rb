# This file was generated by GoReleaser. DO NOT EDIT.
class Mockery < Formula
  desc "A mock code autogenerator for Go"
  homepage "https://github.com/vektra/mockery"
  version "2.4.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/vektra/mockery/releases/download/v2.4.0/mockery_2.4.0_Darwin_x86_64.tar.gz"
    sha256 "57ad707620c4cef4b7a671f0688eaacd9b980c51395c493d1cad79bd5fc6ad1c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/vektra/mockery/releases/download/v2.4.0/mockery_2.4.0_Linux_x86_64.tar.gz"
    sha256 "f20dc2592178df174514404c3936490d3319db580b1c82c958182c6687dcaf01"
  end

  def install
    bin.install "mockery"
  end

  test do
    system "#{bin}mockery --version"
  end
end
