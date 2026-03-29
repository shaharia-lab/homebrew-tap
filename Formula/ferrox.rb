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
      sha256 "1f68f2b2e594db62028cf230025335ecc57aaf3e75cc939005adc4d2d42801d7"
      def install
        bin.install "ferrox"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/shaharia-lab/ferrox/releases/download/v0.1.0/ferrox-aarch64-apple-darwin.tar.gz"
      sha256 "505e7746d7aae106c677a6eb67404c492541cc64aa8e3477777945cc1b4a602c"
      def install
        bin.install "ferrox"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/shaharia-lab/ferrox/releases/download/v0.1.0/ferrox-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "18c328582867ff86beb64be2797ec3d9d390d1e4269610b8565d2382378a0036"
      def install
        bin.install "ferrox"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/shaharia-lab/ferrox/releases/download/v0.1.0/ferrox-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fd17fa1fc184d1411eaaccaff008db3051a7610073cece6f28992e0e984bcdc9"
      def install
        bin.install "ferrox"
      end
    end
  end

  test do
    system "#{bin}/ferrox", "--version"
  end
end
