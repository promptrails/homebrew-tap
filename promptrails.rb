class Promptrails < Formula
  desc "CLI for the PromptRails AI agent orchestration platform"
  homepage "https://github.com/promptrails/cli"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/promptrails/cli/releases/download/v0.2.0/promptrails-darwin-amd64.tar.gz"
      sha256 "c7f0021db1133e7f4f370ff8d7d9ac65ff3676f6549fd4f39c27ab5e45759396"
    end

    on_arm do
      url "https://github.com/promptrails/cli/releases/download/v0.2.0/promptrails-darwin-arm64.tar.gz"
      sha256 "5e35cc7d22cf92903d9fa605e97d295efa8a6654107046096d5c8fae940dac83"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/promptrails/cli/releases/download/v0.2.0/promptrails-linux-amd64.tar.gz"
      sha256 "713a2c9053c923be891d656a4f971940ec114bef93feeb430d3381c0078b10db"
    end

    on_arm do
      url "https://github.com/promptrails/cli/releases/download/v0.2.0/promptrails-linux-arm64.tar.gz"
      sha256 "d825987e56880b6ebcc1a2c0faae8bcd6ef799efa06b79ed4490fda272630e4f"
    end
  end

  def install
    bin.install "promptrails"
  end

  test do
    system "#{bin}/promptrails", "version"
  end
end
