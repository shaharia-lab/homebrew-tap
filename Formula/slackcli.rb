# typed: false
# frozen_string_literal: true

class Slackcli < Formula
  desc "Slack CLI - Interact with Slack from command line"
  homepage "https://github.com/shaharia-lab/slackcli"
  version "0.17.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.17.0/slackcli-macos"
      sha256 "42d4226f6ff9851e8e54021e6e011f939170c9b549196834bbdbcc369ecea6c8"

      def install
        bin.install "slackcli-macos" => "slackcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.17.0/slackcli-macos-arm64"
      sha256 "0397f6cff6a91bf3923b08169297c3e8bd6353a517de0ba7331ec9db0044e98e"

      def install
        bin.install "slackcli-macos-arm64" => "slackcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.17.0/slackcli-linux"
      sha256 "5b26d31cc9cea5b55c377d0f9c32039904ee4bc8083e8cc670c1b07011784600"

      def install
        bin.install "slackcli-linux" => "slackcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.17.0/slackcli-linux-arm64"
      sha256 "17a48801cd4d2ad667dc96242bbf13af2d8f5c6766841a19b905ce3547957eb8"

      def install
        bin.install "slackcli-linux-arm64" => "slackcli"
      end
    end
  end

  test do
    system "\#{bin}/slackcli", "--version"
  end
end
