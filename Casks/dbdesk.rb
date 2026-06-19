cask "dbdesk" do
  version "0.1.9"
  sha256 "a7285092e233c907ea2afcd7dcc9335b2a826bf9a5081d0092a3561f00d7a887"

  url "https://github.com/zexahq/dbdesk/releases/download/v#{version}/dbdesk-#{version}.dmg"
  name "dbdesk"
  desc "Database desktop client"
  homepage "https://github.com/zexahq/dbdesk"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "dbdesk.app"

  zap trash: [
    "~/Library/Application Support/dbdesk",
    "~/Library/Preferences/app.zexa.dbdesk.plist",
    "~/Library/Saved Application State/app.zexa.dbdesk.savedState",
  ]

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-rd", "com.apple.quarantine", "#{appdir}/dbdesk.app"]
  end
end
