class Promptrails < Formula
  desc "CLI for the PromptRails AI agent orchestration platform"
  homepage "https://github.com/promptrails/cli"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/promptrails/cli/releases/download/v0.4.1/promptrails-darwin-amd64.tar.gz"
      sha256 "cdadbc81f9c7d97d4262f234f5815ab0fcf89b061fff9e50da219c94455b328f"
    end

    on_arm do
      url "https://github.com/promptrails/cli/releases/download/v0.4.1/promptrails-darwin-arm64.tar.gz"
      sha256 "d92c37bc6e104f972f5d3506913d95d5c94ca0e6555111a201e1e46bf0771fb9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/promptrails/cli/releases/download/v0.4.1/promptrails-linux-amd64.tar.gz"
      sha256 "bf76f0d74b2e87cf6858d1d97db9b0f23735e42bd8e9aede8946842cf85cb29c"
    end

    on_arm do
      url "https://github.com/promptrails/cli/releases/download/v0.4.1/promptrails-linux-arm64.tar.gz"
      sha256 "9078ab6e8275c199624169ea2302044c42c0fdb7458787e53789627da5f5ca24"
    end
  end

  def install
    bin.install "promptrails"
  end

  test do
    system "#{bin}/promptrails", "version"
  end
end
