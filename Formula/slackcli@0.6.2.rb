# typed: false
# frozen_string_literal: true

class SlackcliAT062 < Formula
  desc "Slack CLI - Interact with Slack from command line"
  homepage "https://github.com/shaharia-lab/slackcli"
  version "0.6.2"
  license "MIT"

  keg_only :versioned_formula

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.6.2/slackcli-macos"
      sha256 "3d39cfa2d19325d399949784fde6626b0fdb3b3446e475db24e2d1439ed6a93d"

      def install
        bin.install "slackcli-macos" => "slackcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.6.2/slackcli-macos-arm64"
      sha256 "44c44ca6298c5c535225b293357251517d0ed3a00dbb0a855f9c52eb216f9344"

      def install
        bin.install "slackcli-macos-arm64" => "slackcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.6.2/slackcli-linux"
      sha256 "000488ec7c3ff248ffd3a8d766eb8b98f94046e3f307d6156999d8227acba6f1"

      def install
        bin.install "slackcli-linux" => "slackcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.6.2/slackcli-linux-arm64"
      sha256 "c46687c0335e6bc2507d3b80524d6e6cb43a24446298e69936da29790c6a5792"

      def install
        bin.install "slackcli-linux-arm64" => "slackcli"
      end
    end
  end

  test do
    system "\#{bin}/slackcli", "--version"
  end
end
