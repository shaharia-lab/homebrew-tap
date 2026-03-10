# typed: false
# frozen_string_literal: true

class Slackcli < Formula
  desc "Slack CLI - Interact with Slack from command line"
  homepage "https://github.com/shaharia-lab/slackcli"
  version "0.2.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.2.5/slackcli-macos"
      sha256 "a55d596f9eed947ee3f4be8fa405dade76fbd390f89571a632c589fd35142520"

      def install
        bin.install "slackcli-macos" => "slackcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.2.5/slackcli-macos-arm64"
      sha256 "8d05a185abd7cfb4466335d1958f93ad726bc79daa3b61add911680b9010e19b"

      def install
        bin.install "slackcli-macos-arm64" => "slackcli"
      end
    end
  end

  on_linux do
    url "https://github.com/shaharia-lab/slackcli/releases/download/v0.2.5/slackcli-linux"
    sha256 "85b22dc30d2fc19c0b4b04c5bfa8d1976a4ea619672730039f6a83cb207effad"

    def install
      bin.install "slackcli-linux" => "slackcli"
    end
  end

  test do
    system "\#{bin}/slackcli", "--version"
  end
end
