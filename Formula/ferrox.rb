# typed: false
# frozen_string_literal: true

class Ferrox < Formula
  desc "High-performance, stateless LLM API gateway"
  homepage "https://github.com/shaharia-lab/ferrox"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/shaharia-lab/ferrox/releases/download/v0.4.0/ferrox-x86_64-apple-darwin.tar.gz"
      sha256 "841126101a00cddc5e1fab5f36b2942a72c88e40273237236a3964653b01f2e5"
      def install
        bin.install "ferrox"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/shaharia-lab/ferrox/releases/download/v0.4.0/ferrox-aarch64-apple-darwin.tar.gz"
      sha256 "57b3fd0c652690baa07022236c0f4d85634f600f4d99086b8ed97dfaaa82779d"
      def install
        bin.install "ferrox"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/shaharia-lab/ferrox/releases/download/v0.4.0/ferrox-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "48b76a4c21b87bbc7c738d9d3c7f8edbaa88b32c26ca0ea2913045a1876d0d41"
      def install
        bin.install "ferrox"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/shaharia-lab/ferrox/releases/download/v0.4.0/ferrox-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0fa7f6a85d13dc4066a8098762ee75ce6c1fda44125eeb3ef022f2226584bec9"
      def install
        bin.install "ferrox"
      end
    end
  end

  test do
    system "#{bin}/ferrox", "--version"
  end
end
