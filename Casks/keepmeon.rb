cask "keepmeon" do
  version "1.3.1"
  sha256 "89e4d1f7ab5df47c1e7032de6e02ee70b1c4f7d992e381e03dcac5db0e12c3dc"

  url "https://github.com/christianmusumeci00/KeepMeOn/releases/download/v#{version}/KeepMeOn.dmg"
  name "KeepMeOn"
  desc "Menu bar app that keeps Microsoft Teams from marking you Away"
  homepage "https://github.com/christianmusumeci00/KeepMeOn"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "KeepMeOn.app"

  uninstall quit:       "com.keepmeon.app",
            login_item: "KeepMeOn"

  zap trash: "~/Library/Preferences/com.keepmeon.app.plist"
end
