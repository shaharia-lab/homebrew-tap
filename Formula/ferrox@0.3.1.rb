# typed: false
# frozen_string_literal: true

class FerroxAT031 < Formula
  desc "High-performance, stateless LLM API gateway"
  homepage "https://github.com/shaharia-lab/ferrox"
  version "0.3.1"
  license "MIT"

  keg_only :versioned_formula

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/shaharia-lab/ferrox/releases/download/v0.3.1/ferrox-x86_64-apple-darwin.tar.gz"
      sha256 "e0a6611cb2b40e0c40da8cd780e06f5b95dbcd460d26dd14921be21fd4494184"
      def install
        bin.install "ferrox"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/shaharia-lab/ferrox/releases/download/v0.3.1/ferrox-aarch64-apple-darwin.tar.gz"
      sha256 "61da3e01fa919c67a38f3177bc7a1f0652bd4d8eb8e02b66f41daac1406050d2"
      def install
        bin.install "ferrox"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/shaharia-lab/ferrox/releases/download/v0.3.1/ferrox-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "28a27ac94d5734a1979995a74222e0f8f42c785e16b08bb32313f873be584657"
      def install
        bin.install "ferrox"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/shaharia-lab/ferrox/releases/download/v0.3.1/ferrox-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2969930254ef68db4552eed333be2ac5a60832214484f10806aef4ee2d02b011"
      def install
        bin.install "ferrox"
      end
    end
  end

  test do
    system "#{bin}/ferrox", "--version"
  end
end
