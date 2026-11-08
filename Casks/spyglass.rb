cask "spyglass" do
  version "2.1.0"
  sha256 "939f88c3819e54d7ccb5ccae207ccca685bde686fb165660dbc49cf5b377ed9e"

  url "https://github.com/magicelk235/spyglass/releases/download/v#{version}/Spyglass.dmg"
  name "Spyglass"
  desc "Quick Look previews for Markdown, code, archives and Google Drive files"
  homepage "https://magicelklabs.com/spyglass/"

  auto_updates true
  depends_on macos: :sonoma

  app "Spyglass.app"

  zap trash: [
    "~/Library/Caches/com.spyglass.app",
    "~/Library/Containers/com.spyglass.app.preview",
    "~/Library/Group Containers/group.com.spyglass.shared",
    "~/Library/Group Containers/V8K8L3ZSD5.com.spyglass.shared",
    "~/Library/Preferences/com.spyglass.app.plist",
    "~/Library/Saved Application State/com.spyglass.app.savedState",
  ]
end
