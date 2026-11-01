# typed: false
# frozen_string_literal: true

class Slackcli < Formula
  desc "Slack CLI - Interact with Slack from command line"
  homepage "https://github.com/shaharia-lab/slackcli"
  version "0.19.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.19.0/slackcli-macos"
      sha256 "5cd2175cbc12326e9673760b3e111fd7a993e87701c09ef80e8fcfeb94b5599c"

      def install
        bin.install "slackcli-macos" => "slackcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.19.0/slackcli-macos-arm64"
      sha256 "1550a99f42575b5578a0ab2fd4434d9737039ca72745574cf785884949298c3f"

      def install
        bin.install "slackcli-macos-arm64" => "slackcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.19.0/slackcli-linux"
      sha256 "628b9cb23c3bce00fca3d4109cca54f2c404a90129b31fa36e66dcfdfde25e0f"

      def install
        bin.install "slackcli-linux" => "slackcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/shaharia-lab/slackcli/releases/download/v0.19.0/slackcli-linux-arm64"
      sha256 "f6c255634065fe8fdd7d0cc534425fc29be0b9a62320365eec8c1fce309d1cf0"

      def install
        bin.install "slackcli-linux-arm64" => "slackcli"
      end
    end
  end

  test do
    system "\#{bin}/slackcli", "--version"
  end
end
