# typed: false
# frozen_string_literal: true

class SlackcliAT050 < Formula
  desc "Slack CLI - Interact with Slack from command line"
  homepage "https://github.com/shaharia-lab/slackcli"
  version "0.5.0"
  license "MIT"

  keg_only :versioned_formula

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.5.0/slackcli-macos"
      sha256 "569e9d671c061c4e7a49954f2a6d018f04e35506f86ca0b2426f81c272234edc"

      def install
        bin.install "slackcli-macos" => "slackcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.5.0/slackcli-macos-arm64"
      sha256 "e7a1114f56bb2437e63eaf66f94adc5bd2cb4163ce265af30f62183cd854e357"

      def install
        bin.install "slackcli-macos-arm64" => "slackcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.5.0/slackcli-linux"
      sha256 "fcd0ba5d363411f1646c03deaa1e98d50ad5df700bafa2ebb0432d416d55b8d5"

      def install
        bin.install "slackcli-linux" => "slackcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.5.0/slackcli-linux-arm64"
      sha256 "0d1b5da74050c500b9cfd8c23ceb36df5098cf7e9f0f271c122b72fad8c3209f"

      def install
        bin.install "slackcli-linux-arm64" => "slackcli"
      end
    end
  end

  test do
    system "\#{bin}/slackcli", "--version"
  end
end
