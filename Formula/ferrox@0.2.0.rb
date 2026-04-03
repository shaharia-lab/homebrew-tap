# typed: false
# frozen_string_literal: true

class FerroxAT020 < Formula
  desc "High-performance, stateless LLM API gateway"
  homepage "https://github.com/shaharia-lab/ferrox"
  version "0.2.0"
  license "MIT"

  keg_only :versioned_formula

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/shaharia-lab/ferrox/releases/download/v0.2.0/ferrox-x86_64-apple-darwin.tar.gz"
      sha256 "1e51c2fddf301ae8dd6df8835164d30ab952d479f55451dc43c88ee3fb6d13c4"
      def install
        bin.install "ferrox"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/shaharia-lab/ferrox/releases/download/v0.2.0/ferrox-aarch64-apple-darwin.tar.gz"
      sha256 "f36175d8605f83657e2aa8bc0c2fe7c908b77a7ead7202dd858d4756e83dd345"
      def install
        bin.install "ferrox"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/shaharia-lab/ferrox/releases/download/v0.2.0/ferrox-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "54080beef09418a8eb729846e9a473c628001f9c853d2481ee2a007b075587bf"
      def install
        bin.install "ferrox"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/shaharia-lab/ferrox/releases/download/v0.2.0/ferrox-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0a9288b3a44e9754f1d1a1cda03b964420abf055c3e6576aa28e81de68392e2b"
      def install
        bin.install "ferrox"
      end
    end
  end

  test do
    system "#{bin}/ferrox", "--version"
  end
end
