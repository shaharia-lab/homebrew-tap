# typed: false
# frozen_string_literal: true

class SlackcliAT0181 < Formula
  desc "Slack CLI - Interact with Slack from command line"
  homepage "https://github.com/shaharia-lab/slackcli"
  version "0.18.1"
  license "MIT"

  keg_only :versioned_formula

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.18.1/slackcli-macos"
      sha256 "fcb62962e77af132a383fae1f00f90a706d382e1740dca89d074babc99a15ed4"

      def install
        bin.install "slackcli-macos" => "slackcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.18.1/slackcli-macos-arm64"
      sha256 "ba75557582ffb238718622f9b2669e32648326d388713ece71f6064cd872ba71"

      def install
        bin.install "slackcli-macos-arm64" => "slackcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.18.1/slackcli-linux"
      sha256 "9acb1ca2331540ea215a30288b39378edbec6a32e4e581631e34d4b162a043a9"

      def install
        bin.install "slackcli-linux" => "slackcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.18.1/slackcli-linux-arm64"
      sha256 "73d0e988eeddddbd98687a776e346f1d38a8f2480a317b9e8a09623d8d5bc5f7"

      def install
        bin.install "slackcli-linux-arm64" => "slackcli"
      end
    end
  end

  test do
    system "\#{bin}/slackcli", "--version"
  end
end
