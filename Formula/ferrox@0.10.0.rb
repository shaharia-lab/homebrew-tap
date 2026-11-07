# typed: false
# frozen_string_literal: true

class FerroxAT0100 < Formula
  desc "High-performance, stateless LLM API gateway"
  homepage "https://github.com/shaharia-lab/ferrox"
  version "0.10.0"
  license "MIT"

  keg_only :versioned_formula

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/shaharia-lab/ferrox/releases/download/v0.10.0/ferrox-x86_64-apple-darwin.tar.gz"
      sha256 "a7556915efa71af6c97928d4841b96e211ff890b430d96dc4f46927b1fe1a866"
      def install
        bin.install "ferrox"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/shaharia-lab/ferrox/releases/download/v0.10.0/ferrox-aarch64-apple-darwin.tar.gz"
      sha256 "90d53a53617cb025c5b93d2d428dd91f8ae077a16d0f3de0b7dc456d513ac3e8"
      def install
        bin.install "ferrox"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/shaharia-lab/ferrox/releases/download/v0.10.0/ferrox-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "34a4a3b987317c1b91b7960b2916eb694686db1601ec5e8d022b85561a1fa20c"
      def install
        bin.install "ferrox"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/shaharia-lab/ferrox/releases/download/v0.10.0/ferrox-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "31362d42131891496e1a57dae6e4d926ef2152904f1a6253a826d05219acaedf"
      def install
        bin.install "ferrox"
      end
    end
  end

  test do
    system "#{bin}/ferrox", "--version"
  end
end
