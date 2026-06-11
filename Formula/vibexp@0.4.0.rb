# typed: false
# frozen_string_literal: true

class VibexpAT040 < Formula
  desc "VibeXP CLI - Command line interface for the VibeXP platform"
  homepage "https://github.com/shaharia-lab/vibexp.io"
  version "0.4.0"
  license "MIT"

  keg_only :versioned_formula

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/shaharialab-public-shared/vibexp-release/v0.4.0-vibexp-darwin-x64"
      sha256 "<?xml"
    end
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/shaharialab-public-shared/vibexp-release/v0.4.0-vibexp-darwin-arm64"
      sha256 "<?xml"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://storage.googleapis.com/shaharialab-public-shared/vibexp-release/v0.4.0-vibexp-linux-x64"
        sha256 "<?xml"
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://storage.googleapis.com/shaharialab-public-shared/vibexp-release/v0.4.0-vibexp-linux-arm64"
        sha256 "<?xml"
      end
    end
  end

  def install
    # The binary is downloaded directly (not in an archive)
    # GCS filenames have version prefix: v{VERSION}-vibexp-{platform}
    # Rename to just 'vibexp'
    downloaded_file = Dir.glob("v*-vibexp-*").first
    if downloaded_file && File.exist?(downloaded_file)
      mv downloaded_file, "vibexp"
    end
    bin.install "vibexp"
  end

  test do
    system "\#{bin}/vibexp", "--version"
  end
end
