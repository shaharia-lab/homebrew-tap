class GoogleDriveCli < Formula
  desc "A comprehensive CLI tool for Unix-like filesystem operations on Google Drive"
  homepage "https://github.com/shaharia-lab/google-drive-cli"
  version "0.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/shaharia-lab/google-drive-cli/releases/download/v0.0.1/google-drive-cli_Darwin_x86_64.tar.gz"
      # SHA256 will be updated by goreleaser when release completes
      sha256 "PLACEHOLDER_SHA256_DARWIN_AMD64"

      def install
        bin.install "google-drive-cli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/shaharia-lab/google-drive-cli/releases/download/v0.0.1/google-drive-cli_Darwin_arm64.tar.gz"
      # SHA256 will be updated by goreleaser when release completes
      sha256 "PLACEHOLDER_SHA256_DARWIN_ARM64"

      def install
        bin.install "google-drive-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/shaharia-lab/google-drive-cli/releases/download/v0.0.1/google-drive-cli_Linux_x86_64.tar.gz"
        # SHA256 will be updated by goreleaser when release completes
        sha256 "PLACEHOLDER_SHA256_LINUX_AMD64"

        def install
          bin.install "google-drive-cli"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/shaharia-lab/google-drive-cli/releases/download/v0.0.1/google-drive-cli_Linux_arm64.tar.gz"
        # SHA256 will be updated by goreleaser when release completes
        sha256 "PLACEHOLDER_SHA256_LINUX_ARM64"

        def install
          bin.install "google-drive-cli"
        end
      end
    end
  end

  test do
    system "#{bin}/google-drive-cli", "version"
  end
end