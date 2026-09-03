cask "bourbon" do
  version "2.0.19"
  sha256 "b96594800863d1284875899452ade1a971e019b7d1dc219583e47e6e82a4b6b7"

  url "https://github.com/Unblockerfire/Bourbon/releases/download/v#{version}/Bourbon#{version}.dmg"
  name "Bourbon"
  desc "Native macOS app for running Windows applications"
  homepage "https://getbourbon.app"

  disable! date: "2026-09-02", because: "Bourbon downloads are temporarily paused while a runtime fix is being validated."

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Bourbon.app"

  postflight do
    system_command "/usr/bin/open",
                   args: ["/Applications/Bourbon.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/com.unblockerfire.Bourbon",
    "~/Library/Caches/com.unblockerfire.Bourbon",
    "~/Library/Containers/com.unblockerfire.Bourbon",
    "~/Library/HTTPStorages/com.unblockerfire.Bourbon",
    "~/Library/Preferences/com.unblockerfire.Bourbon.plist",
    "~/Library/Saved Application State/com.unblockerfire.Bourbon.savedState",
  ]
end
