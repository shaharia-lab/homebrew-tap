# typed: false
# frozen_string_literal: true

class GscliAT020 < Formula
  desc "Google Suite CLI - Access Gmail, Drive, and Calendar from command line"
  homepage "https://github.com/shaharia-lab/gscli"
  version "0.2.0"
  license "MIT"

  keg_only :versioned_formula

  on_macos do
    url "https://github.com/shaharia-lab/gscli/releases/download/v0.2.0/gscli-macos"
    sha256 "e4116e59d9f49c29c44ce739f8cd3c60cae5fcdb576c0f3ad16e51ed9cf2ca8e"

    def install
      bin.install "gscli-macos" => "gscli"
    end
  end

  on_linux do
    url "https://github.com/shaharia-lab/gscli/releases/download/v0.2.0/gscli-linux"
    sha256 "f7e2bc7d4d7bf55ad472c186c3898da783b0e5bc93629491a36a378d162789cf"

    def install
      bin.install "gscli-linux" => "gscli"
    end
  end

  test do
    system "\#{bin}/gscli", "--version"
  end
end
