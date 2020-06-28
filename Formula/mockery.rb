# This file was generated by GoReleaser. DO NOT EDIT.
class Mockery < Formula
  desc "A mock code autogenerator for Go"
  homepage "https://github.com/vektra/mockery"
  version "2.0.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/vektra/mockery/releases/download/v2.0.2/mockery_2.0.2_Darwin_x86_64.tar.gz"
    sha256 "b188c46757f98c1bf858f22aa6ace701e3241b3ed022b2583318fd190275a320"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/vektra/mockery/releases/download/v2.0.2/mockery_2.0.2_Linux_x86_64.tar.gz"
      sha256 "c61d08543c7b3d2914cc50c5173537f14ca08c2cddad93a5efce99fad9496af6"
    end
  end

  def install
    bin.install "mockery"
  end

  test do
    system "#{bin}mockery --version"
  end
end
