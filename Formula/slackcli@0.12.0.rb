# typed: false
# frozen_string_literal: true

class SlackcliAT0120 < Formula
  desc "Slack CLI - Interact with Slack from command line"
  homepage "https://github.com/shaharia-lab/slackcli"
  version "0.12.0"
  license "MIT"

  keg_only :versioned_formula

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.12.0/slackcli-macos"
      sha256 "32556e48d69ce61c3d9f12fffe61f2bd4e8b7408872f000aac29466205aab301"

      def install
        bin.install "slackcli-macos" => "slackcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.12.0/slackcli-macos-arm64"
      sha256 "0a6611ab243312377d8cd5c8d00881c1cc98f43c1707c22dcc153e7c60eb021b"

      def install
        bin.install "slackcli-macos-arm64" => "slackcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.12.0/slackcli-linux"
      sha256 "7f536ea11813fe50613a6f808b78d188b68cdcbe780892c5c532b05de22fa7d0"

      def install
        bin.install "slackcli-linux" => "slackcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.12.0/slackcli-linux-arm64"
      sha256 "34ce482f69dc249e593e034ecd46b2494e669a28253c609b1b7a439c7d8aa102"

      def install
        bin.install "slackcli-linux-arm64" => "slackcli"
      end
    end
  end

  test do
    system "\#{bin}/slackcli", "--version"
  end
end
