# typed: false
# frozen_string_literal: true

class SlackcliAT024 < Formula
  desc "Slack CLI - Interact with Slack from command line"
  homepage "https://github.com/shaharia-lab/slackcli"
  version "0.2.4"
  license "MIT"

  keg_only :versioned_formula

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.2.4/slackcli-macos"
      sha256 "e7e0ba0ad193e08d45b0dda6dc94adad7d26409b61e027c8b12cd903c612e7aa"

      def install
        bin.install "slackcli-macos" => "slackcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.2.4/slackcli-macos-arm64"
      sha256 "e11aed374db83de11196c602087aab6c720b841f957eea1af3493b0f8fc06cf5"

      def install
        bin.install "slackcli-macos-arm64" => "slackcli"
      end
    end
  end

  on_linux do
    url "https://github.com/shaharia-lab/slackcli/releases/download/v0.2.4/slackcli-linux"
    sha256 "00e9bec4ac3d1652064043a5567e4cbef293c20eb5c9e608f8788bbd681d0f60"

    def install
      bin.install "slackcli-linux" => "slackcli"
    end
  end

  test do
    system "\#{bin}/slackcli", "--version"
  end
end
