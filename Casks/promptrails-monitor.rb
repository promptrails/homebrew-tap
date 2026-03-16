cask "promptrails-monitor" do
  version "0.1.0"

  on_intel do
    url "https://github.com/promptrails/desktop/releases/download/v#{version}/PromptRails.Monitor_#{version}_x64.dmg"
    sha256 "ddb12879856bceba19490150e410cc971df941dc2f3c74acadef5bcbdd5766d0"
  end

  on_arm do
    url "https://github.com/promptrails/desktop/releases/download/v#{version}/PromptRails.Monitor_#{version}_aarch64.dmg"
    sha256 "4deff4128fd8db121c873386ea2f81aa41d07bac53f763d9151d6eaad7259e18"
  end

  name "PromptRails Monitor"
  desc "Desktop monitoring app for PromptRails AI agent executions"
  homepage "https://github.com/promptrails/desktop"

  app "PromptRails Monitor.app"

  zap trash: [
    "~/Library/Application Support/com.promptrails.monitor",
    "~/Library/Caches/com.promptrails.monitor",
    "~/Library/Preferences/com.promptrails.monitor.plist",
    "~/Library/Saved Application State/com.promptrails.monitor.savedState",
  ]
end
