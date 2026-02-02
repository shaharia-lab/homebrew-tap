# typed: false
# frozen_string_literal: true

class Codenav < Formula
  desc "Code Navigator - AI-powered codebase exploration and understanding tool"
  homepage "https://github.com/shaharia-lab/code-navigator"
  version "0.4.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/shaharia-lab/code-navigator/archive/refs/tags/v0.4.2.tar.gz"
      sha256 "3ac1ee8d97c9fca182abc8c64abdeb3920edd0d307c99c8ced0e168f75df082a"
    end
    if Hardware::CPU.arm?
      url "https://github.com/shaharia-lab/code-navigator/releases/download/v#{version}/codenav-macos-aarch64.tar.gz"
      sha256 "f1a87a34ccf813198ae6b91850c59c885039c990ca757ae5f6e0ca840f697c62"
    end
  end

  def install
    bin.install "codenav"
  end

  test do
    system "#{bin}/codenav", "--version"
  end
end
