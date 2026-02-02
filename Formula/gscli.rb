# typed: false
# frozen_string_literal: true

class Gscli < Formula
  desc "Google Suite CLI - Access Gmail, Drive, and Calendar from command line"
  homepage "https://github.com/shaharia-lab/gscli"
  version "0.1.3"
  license "MIT"

  on_macos do
    url "https://github.com/shaharia-lab/gscli/releases/download/v0.1.3/gscli-macos"
    sha256 "a02b22cb0ccc79e4179ddfcff560cc7d11719123609ee730fd4af2dededc41c9"

    def install
      bin.install "gscli-macos" => "gscli"
    end
  end

  on_linux do
    url "https://github.com/shaharia-lab/gscli/releases/download/v0.1.3/gscli-linux"
    sha256 "31a8b87e5146f21a08213e1afb27bbc4057f39008f2a8ab3d6684abcea2fcdcd"

    def install
      bin.install "gscli-linux" => "gscli"
    end
  end

  test do
    system "\#{bin}/gscli", "--version"
  end
end
