class Promptrails < Formula
  desc "CLI for the PromptRails AI agent orchestration platform"
  homepage "https://github.com/promptrails/cli"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/promptrails/cli/releases/download/v0.6.0/promptrails-darwin-amd64.tar.gz"
      sha256 "d6051d229fc4fba2e03e488614743e5a29e3030c9db4a534a30d566c34da2ec5"
    end

    on_arm do
      url "https://github.com/promptrails/cli/releases/download/v0.6.0/promptrails-darwin-arm64.tar.gz"
      sha256 "82975391cf24e688b6bec03bd6dd059c501eca4324d29db2ff7dc6420786cc11"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/promptrails/cli/releases/download/v0.6.0/promptrails-linux-amd64.tar.gz"
      sha256 "06a5e522572364acd209dec8230577c2942d67bcf7ea74eb331d946544177a96"
    end

    on_arm do
      url "https://github.com/promptrails/cli/releases/download/v0.6.0/promptrails-linux-arm64.tar.gz"
      sha256 "7591f984fd5312811e21950bcdfc87e22fd480a16ff5dec54d89645f543cd79e"
    end
  end

  def install
    bin.install "promptrails"
  end

  test do
    system "#{bin}/promptrails", "version"
  end
end
