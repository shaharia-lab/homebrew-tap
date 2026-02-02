# typed: false
# frozen_string_literal: true

class Codenav < Formula
  desc "Code Navigator - AI-powered codebase exploration and understanding tool"
  homepage "https://github.com/shaharia-lab/code-navigator"
  version "0.4.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/shaharia-lab/code-navigator/releases/download/v0.4.2/codenav-macos-x86_64.tar.gz"
      sha256 "9d1e2d89eccc4cc539d8ba2a79223c4114770da8197ac7718396493ec26a616f"
    end
    if Hardware::CPU.arm?
      url "https://github.com/shaharia-lab/code-navigator/releases/download/v0.4.2/codenav-macos-aarch64.tar.gz"
      sha256 "39a189affeac9f34cfbbd4840030862a56903d3ebb7dc8a98157174b5da7655f"
    end
  end

  def install
    bin.install "codenav"
  end

  test do
    system "#{bin}/codenav", "--version"
  end
end
