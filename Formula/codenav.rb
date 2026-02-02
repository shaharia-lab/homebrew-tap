# typed: false
# frozen_string_literal: true

class Codenav < Formula
  desc "Code Navigator - AI-powered codebase exploration and understanding tool"
  homepage "https://github.com/shaharia-lab/code-navigator"
  version "0.4.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/shaharia-lab/code-navigator/releases/download/v0.4.3/codenav-macos-x86_64.tar.gz"
      sha256 "34ff573fa4be64a55db34c1531031d86a7f0ec48e2bd36dfec84c8250fdc4cdf"
    end
    if Hardware::CPU.arm?
      url "https://github.com/shaharia-lab/code-navigator/releases/download/v0.4.3/codenav-macos-aarch64.tar.gz"
      sha256 "775de6dc635af3f4e3e528909251e94d67fcfe15d95920edba9a4b3cd741c250"
    end
  end

  def install
    bin.install "codenav"
  end

  test do
    system "\#{bin}/codenav", "--version"
  end
end
