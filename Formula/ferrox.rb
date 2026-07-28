# typed: false
# frozen_string_literal: true

class Ferrox < Formula
  desc "High-performance, stateless LLM API gateway"
  homepage "https://github.com/shaharia-lab/ferrox"
  version "0.5.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/shaharia-lab/ferrox/releases/download/v0.5.1/ferrox-x86_64-apple-darwin.tar.gz"
      sha256 "cdffe5256f7177035afc2bc495d4a3fa53869816d35850da5a454203fb1dd9f9"
      def install
        bin.install "ferrox"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/shaharia-lab/ferrox/releases/download/v0.5.1/ferrox-aarch64-apple-darwin.tar.gz"
      sha256 "d3f163f0a402d0a5c032ea28bb98851bfd94a0ff9aadbeac62bd43127b38989f"
      def install
        bin.install "ferrox"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/shaharia-lab/ferrox/releases/download/v0.5.1/ferrox-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "49a95528be74d631b04a555cae727bf3cfee0692ba5090ef33e163a30bfdebd4"
      def install
        bin.install "ferrox"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/shaharia-lab/ferrox/releases/download/v0.5.1/ferrox-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "713146dd309f91b3775608304a066803b3fe35ca677757f2e07aa95f5a56dde1"
      def install
        bin.install "ferrox"
      end
    end
  end

  test do
    system "#{bin}/ferrox", "--version"
  end
end
