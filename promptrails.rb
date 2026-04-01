class Promptrails < Formula
  desc "CLI for the PromptRails AI agent orchestration platform"
  homepage "https://github.com/promptrails/cli"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/promptrails/cli/releases/download/v0.2.1/promptrails-darwin-amd64.tar.gz"
      sha256 "6b253f576aa3245c3bca02b155a823adac78c269ad7b452e8ef8b7687cb08651"
    end

    on_arm do
      url "https://github.com/promptrails/cli/releases/download/v0.2.1/promptrails-darwin-arm64.tar.gz"
      sha256 "3c3df32a3644d67a5e77a996dbafad4d473a3870ce7761ba5205ae45c7de7c7a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/promptrails/cli/releases/download/v0.2.1/promptrails-linux-amd64.tar.gz"
      sha256 "50f1b93e95631eff736d4acb9e40ee4ea74e28a3dd09188ed1706c5bfbc595f2"
    end

    on_arm do
      url "https://github.com/promptrails/cli/releases/download/v0.2.1/promptrails-linux-arm64.tar.gz"
      sha256 "8fd797275a90aa0e5f2ccb62b6bf22d130f526569605c147dd0aa8628fda2552"
    end
  end

  def install
    bin.install "promptrails"
  end

  test do
    system "#{bin}/promptrails", "version"
  end
end
