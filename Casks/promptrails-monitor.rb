cask "promptrails-monitor" do
  version "0.1.0"

  on_intel do
    url "https://github.com/promptrails/desktop/releases/download/v#{version}/PromptRails.Monitor_#{version}_x64.dmg"
    sha256 :no_check
  end

  on_arm do
    url "https://github.com/promptrails/desktop/releases/download/v#{version}/PromptRails.Monitor_#{version}_aarch64.dmg"
    sha256 :no_check
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
