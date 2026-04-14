# typed: false
# frozen_string_literal: true

class Slackcli < Formula
  desc "Slack CLI - Interact with Slack from command line"
  homepage "https://github.com/shaharia-lab/slackcli"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.6.0/slackcli-macos"
      sha256 "c758b318e73282c9e49ea46bf9b47404a56c178487a1c7cac43c1289f10e06e2"

      def install
        bin.install "slackcli-macos" => "slackcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.6.0/slackcli-macos-arm64"
      sha256 "609b862e5eccfa943156a720c6f5529f4509997c62b0213aeb74a1b54f9bd036"

      def install
        bin.install "slackcli-macos-arm64" => "slackcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.6.0/slackcli-linux"
      sha256 "edd3f3e0e6da3b89c57c04e5be8c8065aaa16b77a5271c9345889eabcc348db4"

      def install
        bin.install "slackcli-linux" => "slackcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.6.0/slackcli-linux-arm64"
      sha256 "fb4940304ec01afe059ca8c95fbb064c3927616710b1a2e328b9600f41c0ad1c"

      def install
        bin.install "slackcli-linux-arm64" => "slackcli"
      end
    end
  end

  test do
    system "\#{bin}/slackcli", "--version"
  end
end
