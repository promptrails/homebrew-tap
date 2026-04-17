#!/usr/bin/env bash
# Bump promptrails.rb to a new CLI release.
#
# Usage: ./scripts/bump.sh v0.3.0
#
# Fetches checksums.txt from the release, extracts the SHA256 for each
# platform archive, and rewrites promptrails.rb in place. Prints a diff
# so you can review before committing. Does not commit or push.
set -euo pipefail

if [[ $# -ne 1 ]]; then
  echo "usage: $0 <tag>   (e.g. v0.3.0)" >&2
  exit 2
fi

tag="$1"
version="${tag#v}"
base="https://github.com/promptrails/cli/releases/download/${tag}"
formula="$(cd "$(dirname "$0")/.." && pwd)/promptrails.rb"

if [[ ! -f "$formula" ]]; then
  echo "formula not found: $formula" >&2
  exit 1
fi

echo "fetching ${base}/checksums.txt"
checksums="$(curl -fsSL "${base}/checksums.txt")"

sha_for() {
  local file="$1"
  local line
  line="$(printf '%s\n' "$checksums" | awk -v f="$file" '$2 == f { print $1; exit }')"
  if [[ -z "$line" ]]; then
    echo "no checksum for $file in ${tag}" >&2
    exit 1
  fi
  printf '%s' "$line"
}

darwin_amd64_sha=$(sha_for promptrails-darwin-amd64.tar.gz)
darwin_arm64_sha=$(sha_for promptrails-darwin-arm64.tar.gz)
linux_amd64_sha=$(sha_for promptrails-linux-amd64.tar.gz)
linux_arm64_sha=$(sha_for promptrails-linux-arm64.tar.gz)

cat > "$formula" <<RUBY
class Promptrails < Formula
  desc "CLI for the PromptRails AI agent orchestration platform"
  homepage "https://github.com/promptrails/cli"
  version "${version}"
  license "MIT"

  on_macos do
    on_intel do
      url "${base}/promptrails-darwin-amd64.tar.gz"
      sha256 "${darwin_amd64_sha}"
    end

    on_arm do
      url "${base}/promptrails-darwin-arm64.tar.gz"
      sha256 "${darwin_arm64_sha}"
    end
  end

  on_linux do
    on_intel do
      url "${base}/promptrails-linux-amd64.tar.gz"
      sha256 "${linux_amd64_sha}"
    end

    on_arm do
      url "${base}/promptrails-linux-arm64.tar.gz"
      sha256 "${linux_arm64_sha}"
    end
  end

  def install
    bin.install "promptrails"
  end

  test do
    system "#{bin}/promptrails", "version"
  end
end
RUBY

echo "updated $formula to ${version}"
git -C "$(dirname "$formula")" --no-pager diff -- promptrails.rb || true
echo
echo "next:"
echo "  git commit -am \"bump promptrails to ${version}\" && git push"
