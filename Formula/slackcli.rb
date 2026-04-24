# typed: false
# frozen_string_literal: true

class Slackcli < Formula
  desc "Slack CLI - Interact with Slack from command line"
  homepage "https://github.com/shaharia-lab/slackcli"
  version "0.6.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.6.1/slackcli-macos"
      sha256 "1e0b65f511b6b05c8ad1c095cd2c3b6b909dc7879e6f9dc6c6c61d33ba5ac83f"

      def install
        bin.install "slackcli-macos" => "slackcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.6.1/slackcli-macos-arm64"
      sha256 "8f1ee2cba14d0e6e35de776b0f73d133ce246a7e6f657b768662830e34eebe34"

      def install
        bin.install "slackcli-macos-arm64" => "slackcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.6.1/slackcli-linux"
      sha256 "1a7ee6db9d5547d0aae1ae559f25d711f64a7446484d00202e237105067c15dd"

      def install
        bin.install "slackcli-linux" => "slackcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.6.1/slackcli-linux-arm64"
      sha256 "307eead52c3577ab5b812345f3d56f696c6b20645d11e3bb7fe2ae01b1cf6a66"

      def install
        bin.install "slackcli-linux-arm64" => "slackcli"
      end
    end
  end

  test do
    system "\#{bin}/slackcli", "--version"
  end
end
