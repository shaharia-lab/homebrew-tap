# typed: false
# frozen_string_literal: true

class Slackcli < Formula
  desc "Slack CLI - Interact with Slack from command line"
  homepage "https://github.com/shaharia-lab/slackcli"
  version "0.18.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.18.0/slackcli-macos"
      sha256 "1c8d7d7bd8678ed12320403d6d321e350769edc067a2c78155d9fe180781dba6"

      def install
        bin.install "slackcli-macos" => "slackcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.18.0/slackcli-macos-arm64"
      sha256 "f310d41c8bf568af78c787686d0215941c31010863a39ad4270faaf7100bfe06"

      def install
        bin.install "slackcli-macos-arm64" => "slackcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.18.0/slackcli-linux"
      sha256 "3dbcbef9d233a5962efcf5a98e4be62569e983289ad45a64355680bdab6c76d3"

      def install
        bin.install "slackcli-linux" => "slackcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.18.0/slackcli-linux-arm64"
      sha256 "393c16d8ba927c0731ebe2ddee4a5e61c4bddf146cf581f09a8a721572774f74"

      def install
        bin.install "slackcli-linux-arm64" => "slackcli"
      end
    end
  end

  test do
    system "\#{bin}/slackcli", "--version"
  end
end
