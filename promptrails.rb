class Promptrails < Formula
  desc "CLI for the PromptRails AI agent orchestration platform"
  homepage "https://github.com/promptrails/cli"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/promptrails/cli/releases/download/v0.4.0/promptrails-darwin-amd64.tar.gz"
      sha256 "5e68f59f75f87e15be65d0ec01f581d6d0d870f85d08f364c37502b23feacec6"
    end

    on_arm do
      url "https://github.com/promptrails/cli/releases/download/v0.4.0/promptrails-darwin-arm64.tar.gz"
      sha256 "010cfd4c545e8b4196b7d135fcfc941719b3ba7b4585e37aad8f89ec52db4bbb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/promptrails/cli/releases/download/v0.4.0/promptrails-linux-amd64.tar.gz"
      sha256 "271fd66270d4afc12d73160456d14d1842bfc71ab1b3e0c6676b193a6313a9c5"
    end

    on_arm do
      url "https://github.com/promptrails/cli/releases/download/v0.4.0/promptrails-linux-arm64.tar.gz"
      sha256 "8c2298fb07a0eaa0a7787c8932b7a101ee1942c2e873b981544523bc189d82ac"
    end
  end

  def install
    bin.install "promptrails"
  end

  test do
    system "#{bin}/promptrails", "version"
  end
end
