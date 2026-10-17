# typed: false
# frozen_string_literal: true

class SlackcliAT0160 < Formula
  desc "Slack CLI - Interact with Slack from command line"
  homepage "https://github.com/shaharia-lab/slackcli"
  version "0.16.0"
  license "MIT"

  keg_only :versioned_formula

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.16.0/slackcli-macos"
      sha256 "5eb6feaab2166b3a877995460d172b441b2a1d645a7dc1d4ca9c8c8e6d777659"

      def install
        bin.install "slackcli-macos" => "slackcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.16.0/slackcli-macos-arm64"
      sha256 "96f13f18e4d5defad71283d98931f458258e7619c60a1b6df342431ed45eb3d5"

      def install
        bin.install "slackcli-macos-arm64" => "slackcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.16.0/slackcli-linux"
      sha256 "3dd1258c145d8cbe2b2fff1175f03456c40999b6bb78222d45fa719bbb84b909"

      def install
        bin.install "slackcli-linux" => "slackcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.16.0/slackcli-linux-arm64"
      sha256 "18a16e274335f9272b33a9cbfc8783bae3cf701c2a15c8ec509b89e2a7d993f7"

      def install
        bin.install "slackcli-linux-arm64" => "slackcli"
      end
    end
  end

  test do
    system "\#{bin}/slackcli", "--version"
  end
end
