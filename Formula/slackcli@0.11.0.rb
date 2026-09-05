# typed: false
# frozen_string_literal: true

class SlackcliAT0110 < Formula
  desc "Slack CLI - Interact with Slack from command line"
  homepage "https://github.com/shaharia-lab/slackcli"
  version "0.11.0"
  license "MIT"

  keg_only :versioned_formula

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.11.0/slackcli-macos"
      sha256 "a9de9f0715af39e143648ed8b9beb778c26aadaf137f37bb9a4b736520577ead"

      def install
        bin.install "slackcli-macos" => "slackcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.11.0/slackcli-macos-arm64"
      sha256 "50ed2189bbf9b39224fc668704a3ffbf5fbe204c4458b1cf5eee63559aa71df9"

      def install
        bin.install "slackcli-macos-arm64" => "slackcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.11.0/slackcli-linux"
      sha256 "75cb9a4950258670376f0df9f460ef35a38ebda93e04a43656272905ca5c9ee5"

      def install
        bin.install "slackcli-linux" => "slackcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.11.0/slackcli-linux-arm64"
      sha256 "52a8b7086655cf7066b1c08c1a50a43018661efaafb31944a4284f56f6efb007"

      def install
        bin.install "slackcli-linux-arm64" => "slackcli"
      end
    end
  end

  test do
    system "\#{bin}/slackcli", "--version"
  end
end
