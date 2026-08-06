# typed: false
# frozen_string_literal: true

class Ferrox < Formula
  desc "High-performance, stateless LLM API gateway"
  homepage "https://github.com/shaharia-lab/ferrox"
  version "0.6.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/shaharia-lab/ferrox/releases/download/v0.6.1/ferrox-x86_64-apple-darwin.tar.gz"
      sha256 "4c71940f529d98acd031ad10522e0811507511c7d97242632465f79abcd188aa"
      def install
        bin.install "ferrox"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/shaharia-lab/ferrox/releases/download/v0.6.1/ferrox-aarch64-apple-darwin.tar.gz"
      sha256 "692deff638256d5b69bf8ec196dffd89b7f3de263da3a6d69058302bebe562d0"
      def install
        bin.install "ferrox"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/shaharia-lab/ferrox/releases/download/v0.6.1/ferrox-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "61650770f4475c89063a144c1e111d63772724839aceb2d69447924bbb860985"
      def install
        bin.install "ferrox"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/shaharia-lab/ferrox/releases/download/v0.6.1/ferrox-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "51b3c4a8157ce843b5ea1fbec67c2a4be10579037644814857b5a2c1973572be"
      def install
        bin.install "ferrox"
      end
    end
  end

  test do
    system "#{bin}/ferrox", "--version"
  end
end
