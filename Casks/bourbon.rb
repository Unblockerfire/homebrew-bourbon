cask "bourbon" do
  version "2.0.7"
  sha256 "532a32cb7a42e8b935a2328b6646f1edd1286ad38d14d9e45c6f0d01fa0abea4"

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
