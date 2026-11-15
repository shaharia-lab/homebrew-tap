# typed: false
# frozen_string_literal: true

class Slackcli < Formula
  desc "Slack CLI - Interact with Slack from command line"
  homepage "https://github.com/shaharia-lab/slackcli"
  version "0.19.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.19.2/slackcli-macos"
      sha256 "bb3de8ba58ed38da6e78ae13e33dd53df0092075496932423954920bd24a23e7"

      def install
        bin.install "slackcli-macos" => "slackcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.19.2/slackcli-macos-arm64"
      sha256 "bbaa7be75a52844dfae0beb11c4a1c18f26afe7aadb41e3a76348ef2c46c7d3b"

      def install
        bin.install "slackcli-macos-arm64" => "slackcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.19.2/slackcli-linux"
      sha256 "e9ffc7a13de2a7e635d20191e6afd4616d78a9d5380a79355f0dfac261206c3e"

      def install
        bin.install "slackcli-linux" => "slackcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.19.2/slackcli-linux-arm64"
      sha256 "cc956bd12520fed44f627f1ddf514a4c0167b13430f97e8fd9c5b4329be6c77c"

      def install
        bin.install "slackcli-linux-arm64" => "slackcli"
      end
    end
  end

  test do
    system "\#{bin}/slackcli", "--version"
  end
end
