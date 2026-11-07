# typed: false
# frozen_string_literal: true

class Slackcli < Formula
  desc "Slack CLI - Interact with Slack from command line"
  homepage "https://github.com/shaharia-lab/slackcli"
  version "0.19.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.19.1/slackcli-macos"
      sha256 "6f2fe1eed9284ca5974778bce083aa071dc1514f192c9e993eb407591d05935e"

      def install
        bin.install "slackcli-macos" => "slackcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.19.1/slackcli-macos-arm64"
      sha256 "02c63544f43acd799957abe42f6db008e337179108b8d0d1bb5d23a10af44897"

      def install
        bin.install "slackcli-macos-arm64" => "slackcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.19.1/slackcli-linux"
      sha256 "c9d97d4b57682f664a94a6a7c81df09ff9f674dd7c900c38024ec95db4940692"

      def install
        bin.install "slackcli-linux" => "slackcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.19.1/slackcli-linux-arm64"
      sha256 "b4ed37b0e71223d7142b4d8d5cade92a7d79cdca11f57a3e2da41f65a815cc66"

      def install
        bin.install "slackcli-linux-arm64" => "slackcli"
      end
    end
  end

  test do
    system "\#{bin}/slackcli", "--version"
  end
end
