# typed: false
# frozen_string_literal: true

class Ferrox < Formula
  desc "High-performance, stateless LLM API gateway"
  homepage "https://github.com/shaharia-lab/ferrox"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/shaharia-lab/ferrox/releases/download/v0.1.0/ferrox-x86_64-apple-darwin.tar.gz"
      sha256 "89b7f51c35989bc931f8ce7f6a75f179b010a834f79975a73ef4c970b23d07fb"
      def install
        bin.install "ferrox"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/shaharia-lab/ferrox/releases/download/v0.1.0/ferrox-aarch64-apple-darwin.tar.gz"
      sha256 "b03538b12a33d164ed44c6ea2e16336dc79eaf0f89903e392af84bb34b3e5d96"
      def install
        bin.install "ferrox"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/shaharia-lab/ferrox/releases/download/v0.1.0/ferrox-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ebe3984fc120752ffcce5a41ec73c3c0e5eeafd90f0bfccf69c52586825a12bb"
      def install
        bin.install "ferrox"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/shaharia-lab/ferrox/releases/download/v0.1.0/ferrox-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "64f4c3d62bfdc8fee8262275625199d2a15b89e5dd837994898f0ba4d53da347"
      def install
        bin.install "ferrox"
      end
    end
  end

  test do
    system "#{bin}/ferrox", "--version"
  end
end
