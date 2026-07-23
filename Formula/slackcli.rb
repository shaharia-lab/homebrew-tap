# typed: false
# frozen_string_literal: true

class Slackcli < Formula
  desc "Slack CLI - Interact with Slack from command line"
  homepage "https://github.com/shaharia-lab/slackcli"
  version "0.7.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.7.1/slackcli-macos"
      sha256 "662cfb33f03d5cb15bcd31b030b602e548a04c15a72406fc7fb942bc9b5d714f"

      def install
        bin.install "slackcli-macos" => "slackcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.7.1/slackcli-macos-arm64"
      sha256 "fa82f373a64a686bf544f98a4e33a758bbf6d4ee20c485a7d315aaa92988a281"

      def install
        bin.install "slackcli-macos-arm64" => "slackcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.7.1/slackcli-linux"
      sha256 "5eed4b4242893594c4319f7f06e6c05020583b5f8aa170109a53ba454d678865"

      def install
        bin.install "slackcli-linux" => "slackcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.7.1/slackcli-linux-arm64"
      sha256 "eeed4ffaaa14e78f18d19327cb6462023c72db1b3f24d0cffec9f346901fa16c"

      def install
        bin.install "slackcli-linux-arm64" => "slackcli"
      end
    end
  end

  test do
    system "\#{bin}/slackcli", "--version"
  end
end
