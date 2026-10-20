class Promptrails < Formula
  desc "CLI for the PromptRails AI agent orchestration platform"
  homepage "https://github.com/promptrails/cli"
  version "0.6.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/promptrails/cli/releases/download/v0.6.3/promptrails-darwin-amd64.tar.gz"
      sha256 "3580437d7a497e32cb1f687c88e18a6970195e318ce6aeea1c2340496ebdfdca"
    end

    on_arm do
      url "https://github.com/promptrails/cli/releases/download/v0.6.3/promptrails-darwin-arm64.tar.gz"
      sha256 "7f609c2555de0bb5d20ab8b0251cd1218eff0d751509ed52374008d934868fb3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/promptrails/cli/releases/download/v0.6.3/promptrails-linux-amd64.tar.gz"
      sha256 "9c8e9c5698799f1917130ee1f438c727b74cb95d3041b9b96193193922c89556"
    end

    on_arm do
      url "https://github.com/promptrails/cli/releases/download/v0.6.3/promptrails-linux-arm64.tar.gz"
      sha256 "535177497653b07e857d3ce74ca42b56a7117f629bfb7c2ee2fcb8fa80445546"
    end
  end

  def install
    bin.install "promptrails"
  end

  test do
    system "#{bin}/promptrails", "version"
  end
end
