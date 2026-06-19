class Dbdesk < Formula
  desc "Database desktop client"
  homepage "https://github.com/zexahq/dbdesk"
  version "0.1.9"

  if OS.mac?
    odie "On macOS, use `brew install --cask dbdesk` instead"
  end

  url "https://github.com/zexahq/dbdesk/releases/download/v#{version}/dbdesk-#{version}.AppImage"
  sha256 "c76aa646c6898237522b8e89418a67273ca1f88e552cec341a8ddda1de8d61c1"

  livecheck do
    url :url
    strategy :github_latest
  end

  def install
    bin.install "dbdesk-#{version}.AppImage" => "dbdesk"
  end

  test do
    assert_match "dbdesk", shell_output("#{bin}/dbdesk --help", 1)
  end
end
