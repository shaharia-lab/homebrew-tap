# typed: false
# frozen_string_literal: true

class Codenav < Formula
  desc "Code Navigator - AI-powered codebase exploration and understanding tool"
  homepage "https://github.com/shaharia-lab/code-navigator"
  version "0.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/shaharia-lab/code-navigator/releases/download/v#{version}/codenav-macos-x86_64.tar.gz"
      sha256 "1c6d4a3a2f4bc8883682729094156e32a94d81691a7e1b4b5d283d5d704ebf86"
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
