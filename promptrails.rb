class Promptrails < Formula
  desc "CLI for the PromptRails AI agent orchestration platform"
  homepage "https://github.com/promptrails/cli"
  version "0.6.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/promptrails/cli/releases/download/v0.6.1/promptrails-darwin-amd64.tar.gz"
      sha256 "0e579538820dc4b43784fb0aca406e33b46ae7b6ecdf742ca9991984c58a154b"
    end

    on_arm do
      url "https://github.com/promptrails/cli/releases/download/v0.6.1/promptrails-darwin-arm64.tar.gz"
      sha256 "0e47c2ea14788e4353603457bcf4b82e79fded74519c48bd7486b94a9d849a84"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/promptrails/cli/releases/download/v0.6.1/promptrails-linux-amd64.tar.gz"
      sha256 "0f69fe63b90283939cd50a5dca748cc6bac53cbd751051278f3639fcbe4797c9"
    end

    on_arm do
      url "https://github.com/promptrails/cli/releases/download/v0.6.1/promptrails-linux-arm64.tar.gz"
      sha256 "71c45052b61a0138ce1d04ec397d535d871d27ed1a9fe3e036c9416c588f612c"
    end
  end

  def install
    bin.install "promptrails"
  end

  test do
    system "#{bin}/promptrails", "version"
  end
end
