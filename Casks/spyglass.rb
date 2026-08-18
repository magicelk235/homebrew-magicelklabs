cask "spyglass" do
  version "1.0.0"
  sha256 "80ca1736b22bd5a2017167ec179633bc6a6caeaa66a6bbb8e2ed5fa82d3c2390"

  url "https://github.com/magicelk235/spyglass/releases/download/v#{version}/Spyglass.dmg"
  name "Spyglass"
  desc "Quick Look previews for Google Drive stub files"
  homepage "https://magicelklabs.com/spyglass/"

  depends_on macos: :sonoma

  app "Spyglass.app"

  zap trash: [
    "~/Library/Group Containers/group.com.spyglass.shared",
    "~/Library/Caches/com.spyglass.app",
    "~/Library/Containers/com.spyglass.app.preview",
    "~/Library/Preferences/com.spyglass.app.plist",
    "~/Library/Saved Application State/com.spyglass.app.savedState",
  ]
end
