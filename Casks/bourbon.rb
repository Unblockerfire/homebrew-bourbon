cask "bourbon" do
  version "2.0.8"
  sha256 "67d42aded9926314131fbe91373e5fa4d0d2921d97ffd99b31822e06222b59d8"

  url "https://github.com/Unblockerfire/Bourbon/releases/download/v#{version}/Bourbon#{version}.dmg"
  name "Bourbon"
  desc "Native macOS app for running Windows applications"
  homepage "https://getbourbon.app"

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
