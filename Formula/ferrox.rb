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
      sha256 "d93029377570ec42857413360fa5c292847f590249fdf9b920739a24aa21c3d7"
      def install
        bin.install "ferrox"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/shaharia-lab/ferrox/releases/download/v0.2.0/ferrox-aarch64-apple-darwin.tar.gz"
      sha256 "d8693815d5cd5ca91b066ced27c2943ce50a44eef1e452bd08dedb87e5193ce6"
      def install
        bin.install "ferrox"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/shaharia-lab/ferrox/releases/download/v0.2.0/ferrox-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cdd47b9acace659ee538ef8ab8f61b89ae874f998a46b534686c956eb06891e5"
      def install
        bin.install "ferrox"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/shaharia-lab/ferrox/releases/download/v0.2.0/ferrox-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d8cf87aa35f6d3fd4688ca2bcbf5baf53ae1ba48f21fd23cb20be4d30ed080fe"
      def install
        bin.install "ferrox"
      end
    end
  end

  test do
    system "#{bin}/ferrox", "--version"
  end
end
