class Promptrails < Formula
  desc "CLI for the PromptRails AI agent orchestration platform"
  homepage "https://github.com/promptrails/cli"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/promptrails/cli/releases/download/v0.5.0/promptrails-darwin-amd64.tar.gz"
      sha256 "f150bde905a55905b05207d2f46e39e50366fcc45cff25c5727cdbf0fd4dbf5b"
    end

    on_arm do
      url "https://github.com/promptrails/cli/releases/download/v0.5.0/promptrails-darwin-arm64.tar.gz"
      sha256 "8d72bb369becc18ad537e520c0dbb280d9bbdff35bd6c8cc0fe7eece9d07923a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/promptrails/cli/releases/download/v0.5.0/promptrails-linux-amd64.tar.gz"
      sha256 "18e992b1c8971a37f58412e5810c1d688fceca15f0b3dd05c794aff49f3c67e4"
    end

    on_arm do
      url "https://github.com/promptrails/cli/releases/download/v0.5.0/promptrails-linux-arm64.tar.gz"
      sha256 "0babe0587b65a9d4fd5feb04c5b0c2f4eb74cc2d1cf8cd9a14bfd8ee8dd8ac98"
    end
  end

  def install
    bin.install "promptrails"
  end

  test do
    system "#{bin}/promptrails", "version"
  end
end
