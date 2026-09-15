cask "dbdesk" do
  version "0.1.12"
  sha256 "fd874d8ab19e33a3fa7f215eb8f01a3c83e1dc2a29da3de44c01bfada1fc1aae"

  url "https://github.com/zexahq/dbdesk/releases/download/v0.1.12/DBDesk-0.1.12.dmg"
  name "dbdesk"
  desc "Database desktop client"
  homepage "https://github.com/zexahq/dbdesk"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :macos

  app "DBDesk.app"

  postflight_steps do
    run "/usr/bin/xattr",
        args: ["-rd", "com.apple.quarantine", "DBDesk.app"],
        base: :appdir
  end

  zap trash: [
    "~/Library/Application Support/dbdesk",
    "~/Library/Preferences/app.zexa.dbdesk.plist",
    "~/Library/Saved Application State/app.zexa.dbdesk.savedState",
  ]
end
