# typed: false
# frozen_string_literal: true

class FerroxAT070 < Formula
  desc "High-performance, stateless LLM API gateway"
  homepage "https://github.com/shaharia-lab/ferrox"
  version "0.7.0"
  license "MIT"

  keg_only :versioned_formula

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/shaharia-lab/ferrox/releases/download/v0.7.0/ferrox-x86_64-apple-darwin.tar.gz"
      sha256 "aef4d2860951fd9e1618b5729fe8a4058bf09793d3f2e0910ef56ccdb640b115"
      def install
        bin.install "ferrox"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/shaharia-lab/ferrox/releases/download/v0.7.0/ferrox-aarch64-apple-darwin.tar.gz"
      sha256 "befd63b20c5b025f453b4939da3cc227d9634c5c25e4bba36cc0f9c120cdd0c4"
      def install
        bin.install "ferrox"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/shaharia-lab/ferrox/releases/download/v0.7.0/ferrox-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9cd8295350ffaa0faea3bb432da3ce177ad1e3c654a7b982567368468c738db3"
      def install
        bin.install "ferrox"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/shaharia-lab/ferrox/releases/download/v0.7.0/ferrox-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1067fec98400d3323aa0e5ff443f7443ea8f3f5645c5a0281130d4c1bd53937c"
      def install
        bin.install "ferrox"
      end
    end
  end

  test do
    system "#{bin}/ferrox", "--version"
  end
end
