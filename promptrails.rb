class Promptrails < Formula
  desc "CLI for the PromptRails AI agent orchestration platform"
  homepage "https://github.com/promptrails/cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/promptrails/cli/releases/download/v0.1.0/promptrails-darwin-amd64.tar.gz"
      sha256 "0610f0fd60e0ed5ea1fbefc5e40ad939875cd44a87501847cd037bef748212c6"
    end

    on_arm do
      url "https://github.com/promptrails/cli/releases/download/v0.1.0/promptrails-darwin-arm64.tar.gz"
      sha256 "fb3876171a971753782a6a8da135bae6f88a0a20e119458fdc30968e505445cc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/promptrails/cli/releases/download/v0.1.0/promptrails-linux-amd64.tar.gz"
      sha256 "d91bc13b29f84b6428276e9667fa8d78a581d86c455312b503a662f9ff9b0978"
    end

    on_arm do
      url "https://github.com/promptrails/cli/releases/download/v0.1.0/promptrails-linux-arm64.tar.gz"
      sha256 "7210da74fd8098948dfaf69b08042c624e1a30fb9dd02dcbb3f1da2e63cf6cd2"
    end
  end

  def install
    bin.install "promptrails"
  end

  test do
    system "#{bin}/promptrails", "version"
  end
end
