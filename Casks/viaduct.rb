cask "viaduct" do
  version "1.0.1"
  sha256 "c16c4a418706fd5b4f40087d680c54d92451db6833f026221f27295353ba8774"

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
