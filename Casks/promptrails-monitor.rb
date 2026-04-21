cask "promptrails-monitor" do
  version "0.2.0"

  on_intel do
    url "https://github.com/promptrails/desktop/releases/download/v#{version}/PromptRails.Monitor_#{version}_x64.dmg"
    sha256 "ece290714cc8e442628ebc1d05c75956b2e0068b1f598c60910a01eae3eedef1"
  end

  on_arm do
    url "https://github.com/promptrails/desktop/releases/download/v#{version}/PromptRails.Monitor_#{version}_aarch64.dmg"
    sha256 "76c21cf19d21da6f75036a9f82d3ffcdb09d4ab851729af380a3ca49c9110de8"
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
