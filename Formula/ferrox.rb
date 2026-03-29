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
      sha256 "9cbdc4714620b0e92dbbe98aedd1ca8ca0319472af54fd99d078180a531232ce"
      def install
        bin.install "ferrox"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/shaharia-lab/ferrox/releases/download/v0.1.0/ferrox-aarch64-apple-darwin.tar.gz"
      sha256 "b5d38fade0ee3423f741e992c811fe41422f459761e623d984e05b2d41aed984"
      def install
        bin.install "ferrox"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/shaharia-lab/ferrox/releases/download/v0.1.0/ferrox-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0dbd0b00254e8c67ef1d0a543c338720d97983d31b178d77862c4726ef7572f6"
      def install
        bin.install "ferrox"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/shaharia-lab/ferrox/releases/download/v0.1.0/ferrox-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1791ce94c64e18c96528dc20de27f9de2fba069baa2d476518c69be9bb65643b"
      def install
        bin.install "ferrox"
      end
    end
  end

  test do
    system "#{bin}/ferrox", "--version"
  end
end
