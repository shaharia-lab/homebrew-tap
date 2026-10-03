# typed: false
# frozen_string_literal: true

class SlackcliAT0140 < Formula
  desc "Slack CLI - Interact with Slack from command line"
  homepage "https://github.com/shaharia-lab/slackcli"
  version "0.14.0"
  license "MIT"

  keg_only :versioned_formula

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.14.0/slackcli-macos"
      sha256 "75f6c63b021ba7ca4c68197ce048f8257830c0ad9bc309206b453930cdafbf36"

      def install
        bin.install "slackcli-macos" => "slackcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.14.0/slackcli-macos-arm64"
      sha256 "4ae70d3139d721c9b41d2f98918df6bc9ec0ecc66fe6e4bb43d17b137d5b8a5b"

      def install
        bin.install "slackcli-macos-arm64" => "slackcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.14.0/slackcli-linux"
      sha256 "d34dc4910b809043f7bf6a2729605e253d5b39796dbc105381c48cfde23d77b8"

      def install
        bin.install "slackcli-linux" => "slackcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.14.0/slackcli-linux-arm64"
      sha256 "4c52ca868232b3620ac2eee52553b4b147ea772b4f1c9b5094ad04f7f31ff4e5"

      def install
        bin.install "slackcli-linux-arm64" => "slackcli"
      end
    end
  end

  test do
    system "\#{bin}/slackcli", "--version"
  end
end
