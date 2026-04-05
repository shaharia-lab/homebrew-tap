# typed: false
# frozen_string_literal: true

class FerroxAT021 < Formula
  desc "High-performance, stateless LLM API gateway"
  homepage "https://github.com/shaharia-lab/ferrox"
  version "0.2.1"
  license "MIT"

  keg_only :versioned_formula

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/shaharia-lab/ferrox/releases/download/v0.2.1/ferrox-x86_64-apple-darwin.tar.gz"
      sha256 "aa3813c5e594d05a32190e948c0a762805f574ea881fbdff8fb4127b270de8cf"
      def install
        bin.install "ferrox"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/shaharia-lab/ferrox/releases/download/v0.2.1/ferrox-aarch64-apple-darwin.tar.gz"
      sha256 "75399f333d3c2ec2c5061fb03218af9571ce5c9537bd57587db63bb04d6678bb"
      def install
        bin.install "ferrox"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/shaharia-lab/ferrox/releases/download/v0.2.1/ferrox-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bcfcf7e4a86ab4a711fc345c4d16a93930bb0f486f8578019e8bc3eef9674929"
      def install
        bin.install "ferrox"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/shaharia-lab/ferrox/releases/download/v0.2.1/ferrox-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7639ccfcaae2d92a9de364546cfcdd579787a85bd568b980833ea38a925563dd"
      def install
        bin.install "ferrox"
      end
    end
  end

  test do
    system "#{bin}/ferrox", "--version"
  end
end
