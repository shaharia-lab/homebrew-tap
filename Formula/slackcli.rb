# typed: false
# frozen_string_literal: true

class Slackcli < Formula
  desc "Slack CLI - Interact with Slack from command line"
  homepage "https://github.com/shaharia-lab/slackcli"
  version "0.13.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.13.0/slackcli-macos"
      sha256 "585da6b1b8f4800e088d98b2c3a1dc8c652c74d879bf21ca3b99e3c15c3dcb9e"

      def install
        bin.install "slackcli-macos" => "slackcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.13.0/slackcli-macos-arm64"
      sha256 "b547718fd2d7234e14ef4d060fcb791f59b0f75b2d6240543f99aed93b848a27"

      def install
        bin.install "slackcli-macos-arm64" => "slackcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.13.0/slackcli-linux"
      sha256 "5f2491dc0fb28a3f02ad96f0e39d6c0466f1ace9d517ed7a1bf5ed049013827e"

      def install
        bin.install "slackcli-linux" => "slackcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.13.0/slackcli-linux-arm64"
      sha256 "2b2d61c1a6f8b41e576e77bd2209e00f5708fa5e1e985dad6456454043d11e05"

      def install
        bin.install "slackcli-linux-arm64" => "slackcli"
      end
    end
  end

  test do
    system "\#{bin}/slackcli", "--version"
  end
end
