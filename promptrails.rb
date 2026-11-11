class Promptrails < Formula
  desc "CLI for the PromptRails AI agent orchestration platform"
  homepage "https://github.com/promptrails/cli"
  version "0.6.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/promptrails/cli/releases/download/v0.6.4/promptrails-darwin-amd64.tar.gz"
      sha256 "3932e51d24f84fc7b28121d5b27b6ce5a6751fd9e5661a50d6b4c6b87fe1b6c7"
    end

    on_arm do
      url "https://github.com/promptrails/cli/releases/download/v0.6.4/promptrails-darwin-arm64.tar.gz"
      sha256 "1ce44863160f44bd8300f1736143ddf0e5e0e36e0c20f76520d336e2c3655ce3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/promptrails/cli/releases/download/v0.6.4/promptrails-linux-amd64.tar.gz"
      sha256 "5e1f9b87d9891c7a6b788348db2574250713d9a432601888faba6649dbdfcb09"
    end

    on_arm do
      url "https://github.com/promptrails/cli/releases/download/v0.6.4/promptrails-linux-arm64.tar.gz"
      sha256 "60b99b8d98061e012816391c9e77aa6b65561172cdbe2a7f3ccca3db1f244450"
    end
  end

  def install
    bin.install "promptrails"
  end

  test do
    system "#{bin}/promptrails", "version"
  end
end
