# typed: false
# frozen_string_literal: true

class Slackcli < Formula
  desc "Slack CLI - Interact with Slack from command line"
  homepage "https://github.com/shaharia-lab/slackcli"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.3.1/slackcli-macos"
      sha256 "2205f9b2216cf18e91af55a5be693868218d0af42a335f16733def3bcb3ff7b3"

      def install
        bin.install "slackcli-macos" => "slackcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.3.1/slackcli-macos-arm64"
      sha256 "ff64891cbfa2bbbb664ebdebcf792ac39bd593b239ff67b00879b8e1fe8f2751"

      def install
        bin.install "slackcli-macos-arm64" => "slackcli"
      end
    end
  end

  on_linux do
    url "https://github.com/shaharia-lab/slackcli/releases/download/v0.3.1/slackcli-linux"
    sha256 "2c291f62c1c4527cb53261dc9e86210cb125ad8dbbcac6c5dab277b343335c08"

    def install
      bin.install "slackcli-linux" => "slackcli"
    end
  end

  test do
    system "\#{bin}/slackcli", "--version"
  end
end
