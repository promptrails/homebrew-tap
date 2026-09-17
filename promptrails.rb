class Promptrails < Formula
  desc "CLI for the PromptRails AI agent orchestration platform"
  homepage "https://github.com/promptrails/cli"
  version "0.6.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/promptrails/cli/releases/download/v0.6.2/promptrails-darwin-amd64.tar.gz"
      sha256 "cc1458c9a425ce7a02cf0897a09733aceb31ea6e9213f19f12633dc92369eb36"
    end

    on_arm do
      url "https://github.com/promptrails/cli/releases/download/v0.6.2/promptrails-darwin-arm64.tar.gz"
      sha256 "d4a0a2c4301489fd9f5dc64e739d2c2997f77cd768479cac0127d5f285179952"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/promptrails/cli/releases/download/v0.6.2/promptrails-linux-amd64.tar.gz"
      sha256 "3d45fad6e488c82bd7ebf2e0a6f568f61b65cec817bcbf3ba50ffa4f0089ebf6"
    end

    on_arm do
      url "https://github.com/promptrails/cli/releases/download/v0.6.2/promptrails-linux-arm64.tar.gz"
      sha256 "79f984ba12546522d82dcf9cd5b490b951d5c4751b5c6e849912964cf715c8c2"
    end
  end

  def install
    bin.install "promptrails"
  end

  test do
    system "#{bin}/promptrails", "version"
  end
end
