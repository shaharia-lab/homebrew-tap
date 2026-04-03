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
      sha256 "9f5b6277db398785d45072c5c845cd9ba339e420bd1285fff15de2868a100c27"
      def install
        bin.install "ferrox"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/shaharia-lab/ferrox/releases/download/v0.2.0/ferrox-aarch64-apple-darwin.tar.gz"
      sha256 "c0399d97811c178003e5cf166a7008c07a1ddba4f1d5aeab75d504909fc113b3"
      def install
        bin.install "ferrox"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/shaharia-lab/ferrox/releases/download/v0.2.0/ferrox-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a03a73b8a0348cff389c388a2092f7d3ec9629f792ba6fc13ba71b185912fff5"
      def install
        bin.install "ferrox"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/shaharia-lab/ferrox/releases/download/v0.2.0/ferrox-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1b17ca636d87dcb4437fc7861028d8f74c495831a86e46fc8e6c1976e9fec11f"
      def install
        bin.install "ferrox"
      end
    end
  end

  test do
    system "#{bin}/ferrox", "--version"
  end
end
