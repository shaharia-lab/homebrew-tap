# typed: false
# frozen_string_literal: true

class Slackcli < Formula
  desc "Slack CLI - Interact with Slack from command line"
  homepage "https://github.com/shaharia-lab/slackcli"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.3.0/slackcli-macos"
      sha256 "790968309d24a13a1c5605257caa78a026007c3767d04ce71c2c864c0d65b1bb"

      def install
        bin.install "slackcli-macos" => "slackcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.3.0/slackcli-macos-arm64"
      sha256 "3662b6da3c1dc714180c348b064aa0f2f9e6ee13569fc5d7ed139c45ba33dc45"

      def install
        bin.install "slackcli-macos-arm64" => "slackcli"
      end
    end
  end

  on_linux do
    url "https://github.com/shaharia-lab/slackcli/releases/download/v0.3.0/slackcli-linux"
    sha256 "4539511341248abebd1da120977c9b21b91a9b0262d0ab2c341312a89efdfe3e"

    def install
      bin.install "slackcli-linux" => "slackcli"
    end
  end

  test do
    system "\#{bin}/slackcli", "--version"
  end
end
