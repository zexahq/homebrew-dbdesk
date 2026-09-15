class Dbdesk < Formula
  desc "Database desktop client"
  homepage "https://github.com/zexahq/dbdesk"

  if OS.mac?
    odie "On macOS, use `brew install --cask dbdesk` instead"
  end

  url "https://github.com/zexahq/dbdesk/releases/download/v0.1.12/DBDesk-0.1.12.AppImage"
  version "0.1.12"
  sha256 "4d69a0a8bbb7341101feaa3943d8312f2dde17adcac4903ae6b079187abcb1a6"

  livecheck do
    url :url
    strategy :github_latest
  end

  def install
    bin.install "DBDesk-#{version}.AppImage" => "dbdesk"
  end

  test do
    assert_predicate bin/"dbdesk", :executable?
  end
end
