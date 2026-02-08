# typed: false
# frozen_string_literal: true

class Vibexp < Formula
  desc "VibeXP CLI - Command line interface for the VibeXP platform"
  homepage "https://github.com/shaharia-lab/vibexp.io"
  version "0.3.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/shaharia-lab/vibexp.io/releases/download/cli-v0.3.2/vibexp-darwin-x64"
      sha256 "23e4c28aee2fdb5d83ef2e620794c8488464001fd55e68979657fb14e3287f21"
    end
    if Hardware::CPU.arm?
      url "https://github.com/shaharia-lab/vibexp.io/releases/download/cli-v0.3.2/vibexp-darwin-arm64"
      sha256 "825f0987962ff57d744d5d10a3b28be3c072e9645be00607dd37f8f78cbe0f08"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/shaharia-lab/vibexp.io/releases/download/cli-v0.3.2/vibexp-linux-x64"
        sha256 "255a70899b71422f30df69d48965314abdf3d9747d0ba033315a9aad9029da35"
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/shaharia-lab/vibexp.io/releases/download/cli-v0.3.2/vibexp-linux-arm64"
        sha256 "dcb8e22d881552f147ba5d6a875e7c79ecd8c2b3020960357f56bfe83262d62f"
      end
    end
  end

  def install
    # The binary is downloaded directly (not in an archive)
    # Rename the platform-specific binary to 'vibexp'
    downloaded_file = Dir.glob("vibexp-*").first
    if downloaded_file && File.exist?(downloaded_file)
      mv downloaded_file, "vibexp"
    end
    bin.install "vibexp"
  end

  test do
    system "#{bin}/vibexp", "--version"
  end
end
