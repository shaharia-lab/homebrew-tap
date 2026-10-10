# typed: false
# frozen_string_literal: true

class Slackcli < Formula
  desc "Slack CLI - Interact with Slack from command line"
  homepage "https://github.com/shaharia-lab/slackcli"
  version "0.15.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.15.0/slackcli-macos"
      sha256 "f97b9480538183797770a5a5e62e2eff8d8a5ee29342c4db9a68ea95107e52a3"

      def install
        bin.install "slackcli-macos" => "slackcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.15.0/slackcli-macos-arm64"
      sha256 "d9fa70f44cd029870069ec9776113d615f55359f024129f86b0e32d8f46fecd7"

      def install
        bin.install "slackcli-macos-arm64" => "slackcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.15.0/slackcli-linux"
      sha256 "7a8e263a2c25051d606362a585f98a70ccfe3303b6e110e627e6415246f2b58c"

      def install
        bin.install "slackcli-linux" => "slackcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.15.0/slackcli-linux-arm64"
      sha256 "ced9665c6a8fd6916e06df16208ca3f8a8c0b834521730c301de09d9b030ee10"

      def install
        bin.install "slackcli-linux-arm64" => "slackcli"
      end
    end
  end

  test do
    system "\#{bin}/slackcli", "--version"
  end
end
