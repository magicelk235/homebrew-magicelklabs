cask "viaduct" do
  version "1.1.0"
  sha256 "69b75c33e19f68c1c53d0bec61604ae88910755ec9192f676aade322134fa687"

  url "https://github.com/magicelk235/viaduct-app/releases/download/v#{version}/Viaduct.dmg"
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
