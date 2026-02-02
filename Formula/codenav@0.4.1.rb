# typed: false
# frozen_string_literal: true

class CodenavAT041 < Formula
  desc "Code Navigator - AI-powered codebase exploration and understanding tool"
  homepage "https://github.com/shaharia-lab/code-navigator"
  version "0.4.1"
  license "MIT"

  keg_only :versioned_formula

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/shaharia-lab/code-navigator/releases/download/v0.4.1/codenav-macos-x86_64.tar.gz"
      sha256 "1c6d4a3a2f4bc8883682729094156e32a94d81691a7e1b4b5d283d5d704ebf86"
    end
    if Hardware::CPU.arm?
      url "https://github.com/shaharia-lab/code-navigator/releases/download/v0.4.1/codenav-macos-aarch64.tar.gz"
      sha256 "f1a87a34ccf813198ae6b91850c59c885039c990ca757ae5f6e0ca840f697c62"
    end
  end

  on_linux do
    url "https://github.com/shaharia-lab/code-navigator/releases/download/v0.4.1/codenav-linux-x86_64.tar.gz"
    sha256 "1a9dd89cd53c4f28d400a80ab643febcc2929b2b3eb2b23a208f4e4b3470e28f"
  end

  def install
    bin.install "codenav"
  end

  test do
    system "#{bin}/codenav", "--version"
  end
end
