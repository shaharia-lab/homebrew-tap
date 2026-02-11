# typed: false
# frozen_string_literal: true

class SlackcliAT022 < Formula
  desc "Slack CLI - Interact with Slack from command line"
  homepage "https://github.com/shaharia-lab/slackcli"
  version "0.2.2"
  license "MIT"

  keg_only :versioned_formula

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.2.2/slackcli-macos"
      sha256 "55a2dedc012e742ec966b2f72153786022e9d8b5e408e11a48da5d61a891d746"

      def install
        bin.install "slackcli-macos" => "slackcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.2.2/slackcli-macos-arm64"
      sha256 "aef49b8d7f47d540431055823d550174b36d967e23a8eb64afa00d8907a743b6"

      def install
        bin.install "slackcli-macos-arm64" => "slackcli"
      end
    end
  end

  on_linux do
    url "https://github.com/shaharia-lab/slackcli/releases/download/v0.2.2/slackcli-linux"
    sha256 "50764bf2ec86e96de1e2010f4a9772bd28f4d323cf65a6b15aa214773a353b06"

    def install
      bin.install "slackcli-linux" => "slackcli"
    end
  end

  test do
    system "\#{bin}/slackcli", "--version"
  end
end
