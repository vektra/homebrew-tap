# This file was generated by GoReleaser. DO NOT EDIT.
class Mockery < Formula
  desc "A mock code autogenerator for Go"
  homepage "https://github.com/vektra/mockery"
  version "1.1.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/vektra/mockery/releases/download/v1.1.2/mockery_1.1.2_Darwin_x86_64.tar.gz"
    sha256 "00b4d7bd5bf3e9adaa33f2743241597568ad3ef9061121b3c4f4b29f5c545661"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/vektra/mockery/releases/download/v1.1.2/mockery_1.1.2_Linux_x86_64.tar.gz"
      sha256 "c787a6340cb8009135334d7e9e7fcb19d53a7eefe13c3b73bbc757ed73e6b6f8"
    end
  end

  def install
    bin.install "mockery"
  end

  test do
    system "#{bin}mockery --version"
  end
end
