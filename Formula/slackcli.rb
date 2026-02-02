# typed: false
# frozen_string_literal: true

class Slackcli < Formula
  desc "Slack CLI - Interact with Slack from command line"
  homepage "https://github.com/shaharia-lab/slackcli"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.2.1/slackcli-macos"
      sha256 "da6740fc257317e98e3aa306cf6805d2c32f1445fbad65f6a0402f5a887658e0"

      def install
        bin.install "slackcli-macos" => "slackcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.2.1/slackcli-macos-arm64"
      sha256 "b3b4b5a4e36a7f63992a2af303ea39378f674f7af7c883092bdd384b87a6b623"

      def install
        bin.install "slackcli-macos-arm64" => "slackcli"
      end
    end
  end

  on_linux do
    url "https://github.com/shaharia-lab/slackcli/releases/download/v0.2.1/slackcli-linux"
    sha256 "f8c003d008f7e21cd8c8406328bbeeb1b4144b35e23c77117540f00d5509b0cd"

    def install
      bin.install "slackcli-linux" => "slackcli"
    end
  end

  test do
    system "\#{bin}/slackcli", "--version"
  end
end
