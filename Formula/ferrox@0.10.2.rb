# typed: false
# frozen_string_literal: true

class FerroxAT0102 < Formula
  desc "High-performance, stateless LLM API gateway"
  homepage "https://github.com/shaharia-lab/ferrox"
  version "0.10.2"
  license "MIT"

  keg_only :versioned_formula

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/shaharia-lab/ferrox/releases/download/v0.10.2/ferrox-x86_64-apple-darwin.tar.gz"
      sha256 "01c29ebc35b7d9f9c13761dd8273ec21ad1491771d5f3e1acd59ec19e1850b14"
      def install
        bin.install "ferrox"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/shaharia-lab/ferrox/releases/download/v0.10.2/ferrox-aarch64-apple-darwin.tar.gz"
      sha256 "e848f61005f68260081774d9ca469e66a713b88680041f07ad35bdd965f725c3"
      def install
        bin.install "ferrox"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/shaharia-lab/ferrox/releases/download/v0.10.2/ferrox-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f3bbb806baf214ca470b9d53f09cc72cf1e75af269d242636eebbff77cbfb5e4"
      def install
        bin.install "ferrox"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/shaharia-lab/ferrox/releases/download/v0.10.2/ferrox-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6c564f00ce59ab282223dbea8f6b470f7c6795a5bae39fb224483075cce0bef1"
      def install
        bin.install "ferrox"
      end
    end
  end

  test do
    system "#{bin}/ferrox", "--version"
  end
end
