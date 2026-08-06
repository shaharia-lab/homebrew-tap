# typed: false
# frozen_string_literal: true

class FerroxAT060 < Formula
  desc "High-performance, stateless LLM API gateway"
  homepage "https://github.com/shaharia-lab/ferrox"
  version "0.6.0"
  license "MIT"

  keg_only :versioned_formula

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/shaharia-lab/ferrox/releases/download/v0.6.0/ferrox-x86_64-apple-darwin.tar.gz"
      sha256 "3da9a96d82ffa5fd68055bc98f507dd67f563e2a0b07f7b17af7fe6668946d61"
      def install
        bin.install "ferrox"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/shaharia-lab/ferrox/releases/download/v0.6.0/ferrox-aarch64-apple-darwin.tar.gz"
      sha256 "55f41ab804b07d7895a045bbc6caafa8bd7aa3f3b7bfc006913c2498c028db07"
      def install
        bin.install "ferrox"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/shaharia-lab/ferrox/releases/download/v0.6.0/ferrox-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f799a170eec9c65f0b1f5d00436dfd8327cf2af2d7a628fe6e9073ddf34d5084"
      def install
        bin.install "ferrox"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/shaharia-lab/ferrox/releases/download/v0.6.0/ferrox-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "db1c2487af96242d59afcf47ddfee01f69cf3cebffd70e404c2f65c828235637"
      def install
        bin.install "ferrox"
      end
    end
  end

  test do
    system "#{bin}/ferrox", "--version"
  end
end
