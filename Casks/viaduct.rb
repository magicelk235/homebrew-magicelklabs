cask "viaduct" do
  version "1.0.2"
  sha256 "34df23f5ea18eb971c80645255b5ec7989addce346b6e3670f58d6626b8298df"

  url "https://github.com/magicelk235/viaduct-app/releases/download/v#{version}/Viaduct.dmg",
      verified: "github.com/magicelk235/viaduct-app/"
  name "Viaduct"
  desc "Converts Chrome extensions to native Safari extensions"
  homepage "https://magicelklabs.com/"

  depends_on macos: :ventura

  app "Viaduct.app"

  zap trash: [
    "~/Library/Application Support/Viaduct",
    "~/Library/Caches/com.magicelk235.viaduct",
    "~/Library/Preferences/com.magicelk235.viaduct.plist",
    "~/Library/Saved Application State/com.magicelk235.viaduct.savedState",
  ]
end
