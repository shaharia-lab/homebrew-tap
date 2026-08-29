# typed: false
# frozen_string_literal: true

class SlackcliAT0100 < Formula
  desc "Slack CLI - Interact with Slack from command line"
  homepage "https://github.com/shaharia-lab/slackcli"
  version "0.10.0"
  license "MIT"

  keg_only :versioned_formula

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.10.0/slackcli-macos"
      sha256 "86548f922668dd04a81c2ca0dd83e26031af42341738e938c2fe9a89079b4f55"

      def install
        bin.install "slackcli-macos" => "slackcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.10.0/slackcli-macos-arm64"
      sha256 "5d53641ef20c0c865934df27d6d1643891ca63c354cb00437d3aeb84ff9eac3b"

      def install
        bin.install "slackcli-macos-arm64" => "slackcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.10.0/slackcli-linux"
      sha256 "4746c541c335d6bdc84303cdf60f7709413fd33d06be60beb7cdf90e8e405798"

      def install
        bin.install "slackcli-linux" => "slackcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.10.0/slackcli-linux-arm64"
      sha256 "a712a8cdab9f1485927d1a6c118cf99241bcdcdee3b0af9775a9aa1253fb4828"

      def install
        bin.install "slackcli-linux-arm64" => "slackcli"
      end
    end
  end

  test do
    system "\#{bin}/slackcli", "--version"
  end
end
