cask "orpheus" do
  version "0.0.1-alpha.2"
  sha256 "29f8a7f2dae4cb6656c488033ec569941f60ef1bcb218d9e7121fdccfbdd8b13"

  url "https://github.com/christianmusumeci00/orpheus/releases/download/v#{version}/Orpheus-#{version}.dmg"
  name "Orpheus"
  desc "Native workspace where AI agents from any provider work on the same project"
  homepage "https://github.com/christianmusumeci00/orpheus"

  depends_on arch: :arm64
  depends_on macos: :golden_gate

  app "Orpheus.app"
  binary "#{appdir}/Orpheus.app/Contents/Helpers/orpheus"

  uninstall launchctl: "com.christianmusumeci.orpheus.daemon",
            quit:      "com.christianmusumeci.orpheus"

  zap trash: [
    "~/.orpheus",
    "~/Library/Application Support/Orpheus",
    "~/Library/Caches/Orpheus",
    "~/Library/Preferences/com.christianmusumeci.orpheus.plist",
  ]
end
