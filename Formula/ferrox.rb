# typed: false
# frozen_string_literal: true

class Ferrox < Formula
  desc "High-performance, stateless LLM API gateway"
  homepage "https://github.com/shaharia-lab/ferrox"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/shaharia-lab/ferrox/releases/download/v0.3.0/ferrox-x86_64-apple-darwin.tar.gz"
      sha256 "77f9a70aceccf09ed1965abc8097a4060aa85c14ac1a25692d255cc06b7c2f63"
      def install
        bin.install "ferrox"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/shaharia-lab/ferrox/releases/download/v0.3.0/ferrox-aarch64-apple-darwin.tar.gz"
      sha256 "8edfa35294985d6bbd49c0b761a23ad004a94002a506cf1518756285fdcefc44"
      def install
        bin.install "ferrox"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/shaharia-lab/ferrox/releases/download/v0.3.0/ferrox-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "93200aedfd0f2ba196d392f1a572bd0ef2d864e896de1201d3dc7a2fae708ca4"
      def install
        bin.install "ferrox"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/shaharia-lab/ferrox/releases/download/v0.3.0/ferrox-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bb53d42f485e3f5a9d8a15ccf1303445fa4502fcce4cd011aa8f38b4eb839ff2"
      def install
        bin.install "ferrox"
      end
    end
  end

  test do
    system "#{bin}/ferrox", "--version"
  end
end
