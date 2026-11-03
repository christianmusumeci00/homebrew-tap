cask "keepmeon" do
  version "1.3.0"
  sha256 "e10766f978f3dfeb3b7ed5cd86e087647bb2741d38047eb606227d948b3877b0"

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
