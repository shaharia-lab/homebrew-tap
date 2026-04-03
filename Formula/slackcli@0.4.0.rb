# typed: false
# frozen_string_literal: true

class SlackcliAT040 < Formula
  desc "Slack CLI - Interact with Slack from command line"
  homepage "https://github.com/shaharia-lab/slackcli"
  version "0.4.0"
  license "MIT"

  keg_only :versioned_formula

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.4.0/slackcli-macos"
      sha256 "1251c4c1979fff53b26458a393e4b801afb364036a5e1bffd8fe09dcb5cc0392"

      def install
        bin.install "slackcli-macos" => "slackcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.4.0/slackcli-macos-arm64"
      sha256 "dcd8286ae3a2fed75b601b399257f5e335a8c13a4f1fdd6aa733c4ab9813f9b1"

      def install
        bin.install "slackcli-macos-arm64" => "slackcli"
      end
    end
  end

  on_linux do
    url "https://github.com/shaharia-lab/slackcli/releases/download/v0.4.0/slackcli-linux"
    sha256 "8568ff0adf2b5e57f99196ca33d0eaa2b70ed74b6d032e604adb48ccc7eb9537"

    def install
      bin.install "slackcli-linux" => "slackcli"
    end
  end

  test do
    system "\#{bin}/slackcli", "--version"
  end
end
