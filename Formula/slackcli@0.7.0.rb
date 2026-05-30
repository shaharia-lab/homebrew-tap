# typed: false
# frozen_string_literal: true

class SlackcliAT070 < Formula
  desc "Slack CLI - Interact with Slack from command line"
  homepage "https://github.com/shaharia-lab/slackcli"
  version "0.7.0"
  license "MIT"

  keg_only :versioned_formula

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.7.0/slackcli-macos"
      sha256 "d410e715cf0df93e92b4976763d4efd9a50720601b2b2ea1f6d82c6db1ba8900"

      def install
        bin.install "slackcli-macos" => "slackcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.7.0/slackcli-macos-arm64"
      sha256 "668277d015fbfdd31214146c92f7043dc325d6ce9fe760020252e24ee68aae39"

      def install
        bin.install "slackcli-macos-arm64" => "slackcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.7.0/slackcli-linux"
      sha256 "c38c0558d86da26c96e0178de703f9ed374c1185ab521cf78df9767c1e637bef"

      def install
        bin.install "slackcli-linux" => "slackcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.7.0/slackcli-linux-arm64"
      sha256 "fa2b9c7f5eeb9748cc7bc7736d5f56b25579c0f52b53dc5b41aec01abba75e91"

      def install
        bin.install "slackcli-linux-arm64" => "slackcli"
      end
    end
  end

  test do
    system "\#{bin}/slackcli", "--version"
  end
end
