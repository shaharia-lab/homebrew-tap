# typed: false
# frozen_string_literal: true

class Ferrox < Formula
  desc "High-performance, stateless LLM API gateway"
  homepage "https://github.com/shaharia-lab/ferrox"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/shaharia-lab/ferrox/releases/download/v0.2.0/ferrox-x86_64-apple-darwin.tar.gz"
      sha256 "0942e11d86bb88d505b3a55fd69045ce8c9cf340367ef06331ca9bcf8ce17a55"
      def install
        bin.install "ferrox"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/shaharia-lab/ferrox/releases/download/v0.2.0/ferrox-aarch64-apple-darwin.tar.gz"
      sha256 "d3094d7926c9631fdfd26ec7f385694f3f84d764662a9a836ad8e9580266e845"
      def install
        bin.install "ferrox"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/shaharia-lab/ferrox/releases/download/v0.2.0/ferrox-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c790495e4851bb7a5063f802fa1a29d09c7838a02aed2888f0d313311b9dc153"
      def install
        bin.install "ferrox"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/shaharia-lab/ferrox/releases/download/v0.2.0/ferrox-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2a0820b479ffe848e1b8e47c660574d7eafea83d4d7324d4e649c576a9b28818"
      def install
        bin.install "ferrox"
      end
    end
  end

  test do
    system "#{bin}/ferrox", "--version"
  end
end
