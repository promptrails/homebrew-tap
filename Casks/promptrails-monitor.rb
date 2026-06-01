cask "promptrails-monitor" do
  version "0.2.1"

  on_intel do
    url "https://github.com/promptrails/desktop/releases/download/v#{version}/PromptRails.Monitor_#{version}_x64.dmg"
    sha256 "d2d08697b70abbbebb008d8413b11b3a740dd1a288e33ca157ce890b0d140cc3"
  end

  on_arm do
    url "https://github.com/promptrails/desktop/releases/download/v#{version}/PromptRails.Monitor_#{version}_aarch64.dmg"
    sha256 "81c6c2a3cd66074507c6a810760d1140a255d5a721d8944f8f82232166f2f466"
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
