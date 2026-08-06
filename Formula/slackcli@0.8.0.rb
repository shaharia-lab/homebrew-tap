# typed: false
# frozen_string_literal: true

class SlackcliAT080 < Formula
  desc "Slack CLI - Interact with Slack from command line"
  homepage "https://github.com/shaharia-lab/slackcli"
  version "0.8.0"
  license "MIT"

  keg_only :versioned_formula

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.8.0/slackcli-macos"
      sha256 "eb756df95f57dfd69faabb3b72ffd98a158fad0c3aaf3928a71699c1a93d7d02"

      def install
        bin.install "slackcli-macos" => "slackcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.8.0/slackcli-macos-arm64"
      sha256 "1104f5fd5957bd12953ad67b9a04b4748d64c8474faa1be010de2050c5391108"

      def install
        bin.install "slackcli-macos-arm64" => "slackcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.8.0/slackcli-linux"
      sha256 "2cd53eb5d2b3b4c26249cd2d2cf806d3d3857ef956736e8bdaff28d420c0a4de"

      def install
        bin.install "slackcli-linux" => "slackcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.8.0/slackcli-linux-arm64"
      sha256 "eb59b1c5c2f2b96784cce95e4a39731ff11bd877cdef1d14a5a18b1ae2449842"

      def install
        bin.install "slackcli-linux-arm64" => "slackcli"
      end
    end
  end

  test do
    system "\#{bin}/slackcli", "--version"
  end
end
