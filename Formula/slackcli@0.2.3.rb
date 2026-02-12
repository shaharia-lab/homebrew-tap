# typed: false
# frozen_string_literal: true

class SlackcliAT023 < Formula
  desc "Slack CLI - Interact with Slack from command line"
  homepage "https://github.com/shaharia-lab/slackcli"
  version "0.2.3"
  license "MIT"

  keg_only :versioned_formula

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.2.3/slackcli-macos"
      sha256 "2a1e6602a41a5c55cb06ae818d27183e0174f671e9cd275be697a2ff62b6db12"

      def install
        bin.install "slackcli-macos" => "slackcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.2.3/slackcli-macos-arm64"
      sha256 "b01469df79b6fec750fbf9fff89f2543147ba20b1222fa5e4c3b206b78647dfb"

      def install
        bin.install "slackcli-macos-arm64" => "slackcli"
      end
    end
  end

  on_linux do
    url "https://github.com/shaharia-lab/slackcli/releases/download/v0.2.3/slackcli-linux"
    sha256 "142e5d8e0540f93832c95f81f89ac1a4c98e52627a20ea25d5c0e651028fbf3d"

    def install
      bin.install "slackcli-linux" => "slackcli"
    end
  end

  test do
    system "\#{bin}/slackcli", "--version"
  end
end
