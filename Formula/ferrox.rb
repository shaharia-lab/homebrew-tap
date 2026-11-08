# typed: false
# frozen_string_literal: true

class Ferrox < Formula
  desc "High-performance, stateless LLM API gateway"
  homepage "https://github.com/shaharia-lab/ferrox"
  version "0.10.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/shaharia-lab/ferrox/releases/download/v0.10.1/ferrox-x86_64-apple-darwin.tar.gz"
      sha256 "adf5fa9580963dd1bb69c04000b8cf5dbe1872b9ee3ae76784a78a7835e29d33"
      def install
        bin.install "ferrox"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/shaharia-lab/ferrox/releases/download/v0.10.1/ferrox-aarch64-apple-darwin.tar.gz"
      sha256 "fe516c8281aaeb4798563f4df78c849c87bc1f656f202ceeb4130420f65f7bad"
      def install
        bin.install "ferrox"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/shaharia-lab/ferrox/releases/download/v0.10.1/ferrox-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8f47f77ad96db69f635f34ef7a11d2b9d3407afab631842a1f0aa640522ff269"
      def install
        bin.install "ferrox"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/shaharia-lab/ferrox/releases/download/v0.10.1/ferrox-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ad8999050901888b2f3b044011ab3cce1f180a18eb01c3c585a11d8fd0d91604"
      def install
        bin.install "ferrox"
      end
    end
  end

  test do
    system "#{bin}/ferrox", "--version"
  end
end
