cask "bourbon" do
  version "1.0.0"
  sha256 :no_check

  url "https://github.com/Unblockerfire/Bourbon/releases/download/v#{version}/Bourbon-#{version}.dmg"
  name "Bourbon"
  desc "Modern continuation of Whisky for running Windows apps on macOS"
  homepage "https://github.com/Unblockerfire/Bourbon"

  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "Bourbon.app"

  zap trash: [
    "~/Library/Application Support/com.unblockerfire.Bourbon",
    "~/Library/Caches/com.unblockerfire.Bourbon",
    "~/Library/Containers/com.unblockerfire.Bourbon",
    "~/Library/HTTPStorages/com.unblockerfire.Bourbon",
    "~/Library/Preferences/com.unblockerfire.Bourbon.plist",
    "~/Library/Saved Application State/com.unblockerfire.Bourbon.savedState",
  ]
end
