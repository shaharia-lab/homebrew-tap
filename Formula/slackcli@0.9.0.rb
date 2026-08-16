# typed: false
# frozen_string_literal: true

class SlackcliAT090 < Formula
  desc "Slack CLI - Interact with Slack from command line"
  homepage "https://github.com/shaharia-lab/slackcli"
  version "0.9.0"
  license "MIT"

  keg_only :versioned_formula

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.9.0/slackcli-macos"
      sha256 "59f4ccb88c1381cbc1bc1ca008717147ae200d563761267ffba04ea77af12919"

      def install
        bin.install "slackcli-macos" => "slackcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.9.0/slackcli-macos-arm64"
      sha256 "4b55a89651813fac02731205a91464605ccffeeeacefc05507c7682b33dd08a4"

      def install
        bin.install "slackcli-macos-arm64" => "slackcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.9.0/slackcli-linux"
      sha256 "cb8e29bb7c92d24fe46663eb6f9c8166656023a14c2d20d58a59bfe74851f0e4"

      def install
        bin.install "slackcli-linux" => "slackcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.9.0/slackcli-linux-arm64"
      sha256 "b87dc438deb1e98a3b5a13bfd6b78abbba7b74296e42010b43356622e47b3695"

      def install
        bin.install "slackcli-linux-arm64" => "slackcli"
      end
    end
  end

  test do
    system "\#{bin}/slackcli", "--version"
  end
end
