# typed: false
# frozen_string_literal: true

class Slackcli < Formula
  desc "Slack CLI - Interact with Slack from command line"
  homepage "https://github.com/shaharia-lab/slackcli"
  version "0.9.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.9.1/slackcli-macos"
      sha256 "9e2ca22df7659b87f3a971ab451916c90edd7b1641ad05dde8e880ad9b5fd586"

      def install
        bin.install "slackcli-macos" => "slackcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.9.1/slackcli-macos-arm64"
      sha256 "97ae797e6af8411e6bc6c909374c0ee058dea7de81eb5ee1c713933421963222"

      def install
        bin.install "slackcli-macos-arm64" => "slackcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.9.1/slackcli-linux"
      sha256 "caf9d724f4cba526ba01627a8dcc9cd1fbaff0b852f2eb7f754605c7ccc18617"

      def install
        bin.install "slackcli-linux" => "slackcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.9.1/slackcli-linux-arm64"
      sha256 "7b2c45e462488deebf9966f3c2e75ff168a2e37e7cbb60236f38a200ccdfa250"

      def install
        bin.install "slackcli-linux-arm64" => "slackcli"
      end
    end
  end

  test do
    system "\#{bin}/slackcli", "--version"
  end
end
