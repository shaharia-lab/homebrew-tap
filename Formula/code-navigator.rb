# typed: false
# frozen_string_literal: true

class CodeNavigator < Formula
  desc "Blazing-fast code graph generation for AI agents to navigate codebases efficiently"
  homepage "https://github.com/shaharia-lab/code-navigator"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/shaharia-lab/code-navigator/releases/download/v0.4.0/codenav-macos-x86_64.tar.gz"
      sha256 "3ad67c5428f527abddb9777fac8370e569e8ecd3fc3d6e4c8f5fc5c5c95172e9"

      def install
        bin.install "codenav"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/shaharia-lab/code-navigator/releases/download/v0.4.0/codenav-macos-aarch64.tar.gz"
      sha256 "c440bf02ea7f4bac2673e5d3662f982370647533c93f9fa4964b6e770cc4927d"

      def install
        bin.install "codenav"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/shaharia-lab/code-navigator/releases/download/v0.4.0/codenav-linux-x86_64.tar.gz"
        sha256 "b4768ed86a67c3653bf4059ea8871b522bc1d3d904c8b3ee59559a7485b07cba"

        def install
          bin.install "codenav"
        end
      end
    end
  end

  test do
    system "#{bin}/codenav", "--version"
  end
end
