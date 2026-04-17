class Promptrails < Formula
  desc "CLI for the PromptRails AI agent orchestration platform"
  homepage "https://github.com/promptrails/cli"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/promptrails/cli/releases/download/v0.3.0/promptrails-darwin-amd64.tar.gz"
      sha256 "7cf4f6d6d9f43df0df1d318d0120d6b00d5f840004361d4dd0f79b2f0687aee2"
    end

    on_arm do
      url "https://github.com/promptrails/cli/releases/download/v0.3.0/promptrails-darwin-arm64.tar.gz"
      sha256 "e066114d26524498974f1afcbde56f92c699d8f2cbb468608559deab4c39ef5b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/promptrails/cli/releases/download/v0.3.0/promptrails-linux-amd64.tar.gz"
      sha256 "9eed9294c9cc57f2b79d0be3b7b0334c9a9b3f64597be4078df3bb6559d560d2"
    end

    on_arm do
      url "https://github.com/promptrails/cli/releases/download/v0.3.0/promptrails-linux-arm64.tar.gz"
      sha256 "7188303b8b5c16ad0bda0f47669c78eea61f1c289a30669f5043f3553fd05f8e"
    end
  end

  def install
    bin.install "promptrails"
  end

  test do
    system "#{bin}/promptrails", "version"
  end
end
