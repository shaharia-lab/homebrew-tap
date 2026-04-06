# typed: false
# frozen_string_literal: true

class Ferrox < Formula
  desc "High-performance, stateless LLM API gateway"
  homepage "https://github.com/shaharia-lab/ferrox"
  version "0.3.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/shaharia-lab/ferrox/releases/download/v0.3.2/ferrox-x86_64-apple-darwin.tar.gz"
      sha256 "2c51c077943d75ead3d93c038d61af5e48c40669c75c0f9386a55344912c7699"
      def install
        bin.install "ferrox"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/shaharia-lab/ferrox/releases/download/v0.3.2/ferrox-aarch64-apple-darwin.tar.gz"
      sha256 "96756050ffcddf62e7c43de74dd4f4a1f5a331fa573b502e92c75a1f2f2f28b5"
      def install
        bin.install "ferrox"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/shaharia-lab/ferrox/releases/download/v0.3.2/ferrox-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "663fa8416620a640fa17adb656b1fb5e338fdc6e582c9b39eeadc51c3609274f"
      def install
        bin.install "ferrox"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/shaharia-lab/ferrox/releases/download/v0.3.2/ferrox-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0e48e9a21068bda8dd3ae3a4269fd935028715469eda344f5888c5718b8d6c62"
      def install
        bin.install "ferrox"
      end
    end
  end

  test do
    system "#{bin}/ferrox", "--version"
  end
end
