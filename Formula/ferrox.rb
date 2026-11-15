# typed: false
# frozen_string_literal: true

class Ferrox < Formula
  desc "High-performance, stateless LLM API gateway"
  homepage "https://github.com/shaharia-lab/ferrox"
  version "0.10.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/shaharia-lab/ferrox/releases/download/v0.10.3/ferrox-x86_64-apple-darwin.tar.gz"
      sha256 "12fad290d1ce4125d764fad160ef0d5c47f64349a7bc041dbeb380130837eda4"
      def install
        bin.install "ferrox"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/shaharia-lab/ferrox/releases/download/v0.10.3/ferrox-aarch64-apple-darwin.tar.gz"
      sha256 "f4bc80bf7e4dd3f7e5caf534219e94a7afe82bb49324a0622c65e3543340c8ec"
      def install
        bin.install "ferrox"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/shaharia-lab/ferrox/releases/download/v0.10.3/ferrox-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b80353ece8f8493b5e528c8176110428a2325c6eb1e1b18d523dfaa6df5bc670"
      def install
        bin.install "ferrox"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/shaharia-lab/ferrox/releases/download/v0.10.3/ferrox-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6732a0361beeeb240ed0b25666ada76d6766987ef518384afaf4d8dcb12a3925"
      def install
        bin.install "ferrox"
      end
    end
  end

  test do
    system "#{bin}/ferrox", "--version"
  end
end
