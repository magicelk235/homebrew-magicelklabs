cask "viaduct" do
  version "1.0.5"
  sha256 "e6b92a24d709881724f752ce1a794de53752a432e64a9ce90463736b2d8c8dbd"

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
